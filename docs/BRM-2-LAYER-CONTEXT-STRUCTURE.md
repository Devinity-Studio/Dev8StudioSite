# BRM — Context Layer & Structured Layer

> Working Architecture Seed — not Governance

## Purpose

BRM should keep two different kinds of information without confusing them:

1. **Context / Idea** — what is being thought, discussed, observed, questioned, or explored.
2. **Structured BRM** — what has been understood, agreed, promoted, and made traceable.

The separation protects both creativity and system integrity.

## Layer 1 — Context / Idea Layer

This is the place where a thought can exist before it is mature.

Possible records:

- Conversation Context
- Idea
- Observation
- Question
- Challenge
- Candidate Decision
- Open Question
- Experiment Note

Characteristics:

- mutable;
- incomplete is allowed;
- may be discarded;
- may become dormant;
- may become a Seed;
- does not imply approved work;
- preserves original human expression.

### Rule

> Idea ≠ Requirement ≠ Approved Work.

## Layer 2 — Structured BRM

This is the durable, traceable model.

Possible records:

- Seed
- Requirement
- Business Rule
- Decision
- Architecture Decision
- Project
- Feature
- Test
- Evidence
- Trace Link

Characteristics:

- explicit identity;
- state;
- ownership / authority;
- traceability;
- reviewable changes;
- suitable for GitHub-backed records.

## Promotion

Promotion is a deliberate boundary:

```
Context
  ↓
Understand
  ↓
Challenge / Clarify
  ↓
Human review
  ↓
Promote
  ↓
Structured BRM
```

The system should never promote an idea merely because an AI agent suggested it.

## Super Brain + Best Friend

The future BRM interface should allow the assistant to work beside the human:

- receive current Context;
- understand the Project Focus;
- ask questions;
- identify missing information;
- connect related Context;
- propose a structured summary;
- propose promotion.

The assistant is a collaborator and reasoning interface.

BRM remains the system of record.

## Context Snapshot

AI and future agents should receive a bounded Context Snapshot rather than unrestricted access to all projects.

Minimum conceptual fields:

- current project;
- current room;
- current goal;
- current actor;
- current action;
- current selected context;
- relevant requirements;
- relevant seeds;
- open questions;
- relevant evidence;
- allowed context routes.

This supports Project Focus Mode and Context Routing.

## GitHub Relationship

GitHub should remain an external tool, not a replacement for BRM.

For structured BRM records:

```
BRM
 ↓
Git / GitHub adapter
 ↓
GitHub
```

GitHub stores durable project artifacts and history according to the integration contract.

BRM owns the semantic relationship between:

- Context;
- Requirement;
- Business Rule;
- Project;
- Feature;
- Test;
- Evidence.

## External Tool Principle

> Build the Core, Integrate the Ecosystem — Reliably.

Use an adapter boundary so future providers can change without rewriting BRM:

```
BRM Integration Contract
       ├── GitHub
       ├── GitLab
       ├── Figma
       ├── Vercel
       └── Supabase
```

External systems perform their specialized work.

They do not silently become the source of truth for BRM semantics.

## Seed Lifecycle

A Seed may progress independently:

```
Seed
 ↓
Exploring
 ↓
Validating
 ↓
Prioritized
 ↓
Designing
 ↓
Approved
 ↓
Building
 ↓
Testing
 ↓
Released
```

A Seed may also become:

- Dormant
- Rejected
- Reframed

This prevents every conversation from becoming a backlog item.

## Core Principle

> Capture everything. Commit only what we understand.
