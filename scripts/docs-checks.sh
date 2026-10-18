#!/usr/bin/env bash
#
# Repository documentation checks.
#
#   1. Internal markdown links that point at a .md file must resolve to a real file.
#   2. No U+FFFD replacement characters (catches encoding corruption).
#   3. Every section reference (§N, §N.M, §N–M) must match a numbered section
#      marker in the document it refers to.
#
# Usage:  bash scripts/docs-checks.sh
#         (safe to run from anywhere; it always checks the repository root)
# CI:     .github/workflows/docs-checks.yml
#
# What counts as a section
# ------------------------
# A section marker is a numbering marker at the start of a line: a heading
# (`## 18. Privacy and Consent`) or a plain numbered line (`18. Privacy and
# Consent`). This repository mixes both — README.md uses real headings for
# sections 1–8 and plain numbered lines for sections 9–37. A headings-only rule
# would report 19 failures against sections that are genuinely present, so both
# forms are accepted. The cost of accepting plain lines is that a top-level
# numbered list also counts as markers, which only makes the check more
# permissive; it never reports a problem that is not there.
#
# Section-reference resolution
# ----------------------------
# A section reference is attributed to the document named on the same line, in
# order, inheriting the most recent document name on that line. For example:
#
#   | Non-negotiables 1-7 | `README.md` §18–20, `AGENT-HANDOFF.md` §5, `BRM-MVP-V1-IMPLEMENTATION.md` §4–6 |
#
# means §18–20 belongs to README.md, §5 to AGENT-HANDOFF.md, and §4–6 to
# BRM-MVP-V1-IMPLEMENTATION.md.
#
# A reference with no document name before it on the line refers to the file it
# appears in. A bare filename is resolved in this order: repository root, then
# the referring file's directory, then a unique basename match elsewhere in the
# repository. Resolving `README.md` from `docs/` therefore means the root
# README, which is how the documents are written. When a reference resolves to a
# document that has no such section, the failure message names the document it
# resolved to, so the attribution can be inspected or corrected.

set -uo pipefail

REPO_ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_ROOT" || exit 1

FAILURES=0
CHECKS_RUN=0

fail() {
  printf 'FAIL  %s\n' "$1"
  FAILURES=$((FAILURES + 1))
}

# ---------------------------------------------------------------- markdown files

MD_FILES=()
while IFS= read -r file; do
  MD_FILES+=("$file")
done < <(find . -type f -name '*.md' -not -path './.git/*' -not -path './node_modules/*' | sort)

if [ "${#MD_FILES[@]}" -eq 0 ]; then
  echo "No markdown files found. Checked out an empty tree?" >&2
  exit 1
fi

printf 'Checking %d markdown file(s) in %s\n\n' "${#MD_FILES[@]}" "$REPO_ROOT"

# ------------------------------------------------- 1. internal markdown links

for file in "${MD_FILES[@]}"; do
  dir="$(dirname -- "$file")"

  while IFS= read -r link; do
    [ -n "$link" ] || continue

    # Drop any #anchor, then ignore anything that is not an in-repo path.
    target="${link%%#*}"
    target="${target#<}"
    target="${target%>}"
    case "$target" in
      ''|http://*|https://*|//*|mailto:*|tel:*|'#') continue ;;
    esac

    CHECKS_RUN=$((CHECKS_RUN + 1))
    if [ ! -e "$dir/$target" ]; then
      fail "$file: markdown link target does not exist: $link"
    fi
  done < <(grep -oE '\]\([^)]+\.md(#[^)]*)?\)' -- "$file" | sed -E 's/^\]\(//; s/\)$//')
done

# ------------------------------------------------------ 2. encoding integrity

for file in "${MD_FILES[@]}"; do
  CHECKS_RUN=$((CHECKS_RUN + 1))
  if grep -qF $'\xef\xbf\xbd' -- "$file" 2>/dev/null; then
    fail "$file: contains U+FFFD replacement characters (encoding corruption)"
  fi
done

# ------------------------------------------------------- 3. section references

declare -A SECTIONS=()
declare -A SECTIONS_LOADED=()

load_sections() {
  local file="$1"

  [ -n "${SECTIONS_LOADED["$file"]:-}" ] && return
  SECTIONS_LOADED["$file"]=1

  local number
  while IFS= read -r number; do
    [ -n "$number" ] && SECTIONS["$file|$number"]=1
  done < <(
    grep -oE '(^#{1,6}[[:space:]]+[0-9]+(\.[0-9]+)*|^[0-9]+(\.[0-9]+)*([.)]|[[:space:]]))' \
      -- "$file" 2>/dev/null |
      grep -oE '[0-9]+(\.[0-9]+)*'
  )
}

has_section() {
  local file="$1" number="$2"
  load_sections "$file"
  [ -n "${SECTIONS["$file|$number"]:-}" ]
}

# Resolve a bare filename mentioned in a document to a file in this repository.
# Order: repository root, then the referring file's directory, then a unique
# basename match anywhere. Prints the path, or nothing when unresolvable.
resolve_doc() {
  local mention="$1" from_dir="$2" candidate matches

  if [ -f "$mention" ]; then
    printf '%s' "$mention"
    return
  fi

  candidate="$from_dir/$mention"
  if [ -f "$candidate" ]; then
    printf '%s' "$candidate"
    return
  fi

  matches="$(find . -type f -name "$(basename -- "$mention")" -not -path './.git/*' -not -path './node_modules/*' | sort)"
  if [ "$(printf '%s\n' "$matches" | grep -c .)" -eq 1 ]; then
    printf '%s' "$matches"
  fi
}

check_section() {
  local file="$1" line_no="$2" doc="$3" number="$4"
  CHECKS_RUN=$((CHECKS_RUN + 1))
  if ! has_section "$doc" "$number"; then
    fail "$file:$line_no: section §$number not found in $doc (referenced from $(basename -- "$file"))"
  fi
}

for file in "${MD_FILES[@]}"; do
  dir="$(dirname -- "$file")"

  line_no=0
  while IFS= read -r line; do
    line_no=$((line_no + 1))

    # The file itself is the default target for references with no document name.
    current_doc="$file"

    while IFS= read -r token; do
      [ -n "$token" ] || continue

      case "$token" in
        '`'*'.md`')
          mention="${token#\`}"
          mention="${mention%\`}"
          resolved="$(resolve_doc "$mention" "$dir")"
          if [ -n "$resolved" ]; then
            current_doc="$resolved"
          else
            fail "$file:$line_no: referenced document not found: $mention"
          fi
          ;;
        '§'*)
          ref="${token#§}"

          if [[ "$ref" == *[–-]* ]]; then
            low="${ref%%[–-]*}"
            high="${ref##*[–-]}"
            if ! [[ "$low" =~ ^[0-9]+$ && "$high" =~ ^[0-9]+$ ]]; then
              fail "$file:$line_no: unsupported section range §$ref (only plain integer ranges like §4–6 are supported)"
              continue
            fi
            if [ "$high" -lt "$low" ]; then
              fail "$file:$line_no: reversed section range §$ref"
              continue
            fi
            if [ $((high - low)) -gt 50 ]; then
              fail "$file:$line_no: section range §$ref spans more than 50 sections"
              continue
            fi
            for ((n = low; n <= high; n++)); do
              check_section "$file" "$line_no" "$current_doc" "$n"
            done
          else
            check_section "$file" "$line_no" "$current_doc" "$ref"
          fi
          ;;
      esac
    done < <(grep -oE '`[^`]*\.md`|§[0-9]+(\.[0-9]+)*([–-][0-9]+)?' <<<"$line")
  done < <(cat -- "$file")
done

# ------------------------------------------------------------------- summary

printf '\n%d check(s) run.\n' "$CHECKS_RUN"

if [ "$FAILURES" -gt 0 ]; then
  printf '%d problem(s) found.\n' "$FAILURES"
  exit 1
fi

printf 'All documentation checks passed.\n'
