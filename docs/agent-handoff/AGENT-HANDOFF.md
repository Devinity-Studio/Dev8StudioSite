# Agent Handoff Package — Draft

> **Document Type:** Agent Context / Continuity Document  
> **Authority:** Informational context only  
> **Governance Authority:** Governance Documents remain the Source of Truth.

## 1. Purpose

This document allows a new Agent joining Dev8StudioSite to understand the current project position without reading the entire conversation history.

It is intentionally separate from Governance. It must not be used to create, modify, extend, or override Governance requirements.

## 2. Governance Snapshot

- Current State: **Governance Freeze Point** — the approved Governance structure is fixed for Agent execution; Agents must not modify or extend it arbitrarily.
- Lifecycle Status: **Waiting for Role Assignment**
- Production Status: **🔴 Production Code = NOT AUTHORIZED**
- Current Sequence: `Governance → Assignment → Acceptance → Gate Review → Authorization`

### Meaning of Governance Freeze Point

The Freeze Point means Agents cannot independently change Governance. It does not mean Governance can never change. A Governance change requires the appropriate formal review and approval process.

## 3. Approved / Pending References

| Reference | Status |
|---|---|
| Governance Documents | 🟢 Source of Truth |
| STEP 5B Evidence Checklist | 🟢 Approved / Ready for Canonicalization |
| Role Assignment Matrix | 🟢 Approved |
| Role Assignment Memo | 🟢 Approved Draft |
| Role Acceptance Form | 🟡 Pending |
| Gate Review | ⏳ Not Started |
| Final Authorization | 🔴 Not Authorized |
| Production Code | 🔴 Not Authorized |

**Important:** This Handoff Package is not itself a Governance Source of Truth and has no authority to declare another document Canonical.

## 4. Agent Operating Rules

### Rule 1 — Governance Authority

Use approved Governance Documents as the Source of Truth for Governance requirements and boundaries.

### Rule 2 — No Self-Authorization

An Agent must not create a new Governance Requirement, modify an existing Governance Requirement, or promote an implementation preference into a Governance Requirement by itself.

### Rule 3 — Implementation Is Not Governance

Implementation details, technical recommendations, framework defaults, security best practices, or Agent preferences must not automatically become Governance requirements.

### Rule 4 — Technical Pass Is Not Production Authorization

A successful build, test, typecheck, deployment, or technical review does not by itself authorize Production Code.

### Rule 5 — Canonical Status Requires Governance Decision

An Agent must not declare a document or state Canonical unless that status has been established through the appropriate Governance process.

### Rule 6 — Conflict Handling

If an Agent encounters a conflict between proposed work and Governance, the Agent must stop only the conflicting work or decision and escalate it for review. Non-conflicting work may continue where otherwise permitted.

### Rule 7 — Authorization Boundary

Production Code remains **🔴 NOT AUTHORIZED** until the required chain is completed:

`Assignment → Acceptance → Gate Review → Final Authorization`

## 5. Governance Principles Already Established

The project governance work has established the following major principles and boundaries.

### Architecture

- Core values: simplicity, security, flexibility.
- Sensitive data is handled server-side first.
- Public and personal data are decoupled.
- Source Journey is immutable.
- Context-aware contact must remain privacy-safe.
- Source Journey is not the same thing as Selected Context.
- Lifecycle Status is not the same thing as Demo Availability.
- Domain rules should have one canonical definition rather than duplicated logic.

### Product / Solution Lifecycle

- `concept` — “กำลังสำรวจแนวคิด” — CTA “พูดคุยเกี่ยวกับแนวคิด” — `concept_discussion`
- `planned` — “อยู่ในแผนพัฒนา” — CTA “แจ้งความสนใจ” — `product_interest` or `solution_interest`
- `pilot` — “เปิดรับกลุ่มทดลอง” — CTA exactly **“ขอเข้าร่วมทดลอง”** — `pilot_request`
- `available` — “พร้อมให้บริการ” — CTA “ติดต่อสอบถาม” — `product_inquiry` or `solution_inquiry`
- `archived` — “ยุติการให้บริการ” — no product-specific primary CTA

Demo availability is a separate concern: `none`, `request_only`, or `live`. `live` is a future-state capability and must not be represented as available without real implementation.

### Contact Intent Model

Defined contact intents include:

- `problem_discovery`
- `product_inquiry`
- `solution_inquiry`
- `product_interest`
- `solution_interest`
- `concept_discussion`
- `pilot_request`
- `brm_discovery`
- `partnership`
- `general_inquiry`

The project uses one canonical CTA resolver, one contact intent configuration, and one contact form rather than duplicated domain rules.

### Privacy / Consent

Core consent wording:

> “ฉันยินยอมให้ Dev8Studio ใช้ข้อมูลที่ให้ไว้เพื่อติดต่อกลับและดำเนินการตามคำขอนี้”

Consent is required, must not be pre-selected, and must have a policy link. The backend stores policy version and consent timestamp. Marketing consent is separate.

### Context / Submission Integrity

- Context changes or removal preserve authored fields.
- Source Journey is immutable.
- Selected Context is mutable.
- V1 has one active selected context.
- Accepted submission creates an immutable confirmation snapshot.
- Receipt identifiers must be opaque and non-sequential.
- A receipt is not authentication.

## 6. Approved Technical Direction

The currently proposed and locked implementation direction includes:

- Next.js App Router
- TypeScript strict mode
- Vercel
- Static/server-first architecture with progressive enhancement
- One Git repository
- Structured Git-controlled content
- No CMS, Auth, Billing, or live Demo in V1
- Submission backend through a Next.js Route Handler
- Managed relational database compatible with Vercel
- Supabase Managed PostgreSQL in Singapore is the proposed database direction, subject to the applicable approval state
- PostgreSQL is the system of record
- Browser-to-Production-DB direct access is prohibited

### V1 Exclusions

- Authentication
- Admin portal
- CRM sync
- File uploads
- Billing
- Live demo
- BRM Studio
- Marketing automation
- AI processing of user Problem Description

## 7. Production Data and Security Boundaries

- Production PII must not appear in Local, Preview, or Test environments.
- Browser code must not hold privileged database credentials.
- Logs must not contain full submissions or PII.
- Notifications are metadata-only and are not the system of record.
- Production secrets remain server-side and outside Git.
- Environment separation is mandatory.
- Confirmation pages must be private/no-store, noindex, without social previews or third-party analytics, and must not expose the full submission.
- No placeholder Privacy Policy may be used for Production.
- AI V1 must not send Problem Description to an AI provider without separate privacy/contract approval.

## 8. STEP 5B Gate Model

STEP 5B is the Production Security, Operations & Release Authorization stage.

The current Gate Checklist contains 16 gates:

1. Infrastructure & Hosting
2. Provider & Region Verification
3. Database Security
4. Access Control & Accountability
5. Submission Endpoint Security
6. Idempotency & Failure Handling
7. Confirmation & Receipt Security
8. Privacy & Consent
9. Data Retention & Deletion
10. Logging & Observability
11. Notification Security
12. Environment Isolation
13. Backup, Recovery & Incident Response
14. Accessibility & QA
15. Content Truth Review
16. Release Verification

Final outcomes are:

- 🟢 AUTHORIZED
- 🟡 CONDITIONAL / HOLD
- 🔴 NOT AUTHORIZED

## 9. Hard Stops

The following are production hard stops unless the Governance process explicitly changes them:

1. Production PII in Preview
2. Browser direct Production DB access
3. Client privileged DB credentials
4. Full Submission in logs
5. Full Submission in analytics
6. Full Submission in notification email
7. Guessable or sequential receipt identifiers
8. Receipt used as authentication without an auth model
9. Placeholder Privacy Policy
10. Pre-selected consent
11. Consent evidence that cannot be versioned
12. Unapproved retention
13. Unverified database/provider/region
14. Unclear Production readers
15. Unverified backup/deletion controls
16. Missing Production Code Authorization

## 10. Governance Lifecycle and Roles

The governance lifecycle is:

`DoA Template → Evidence Checklist → Role Acceptance Form → Role Assignment → Gate Review → Final Authorization`

Defined roles:

- **Technical Owner** — architecture, build, infrastructure, technical evidence
- **Security Owner** — security gate, secrets, access, security evidence
- **Privacy/Legal Owner** — privacy policy, DPA, retention, consent
- **Data Owner** — lifecycle, retention, deletion, data integrity
- **Business Owner** — content truth, product lifecycle, business logic
- **QA/Accessibility Owner** — QA and accessibility verification
- **Release Owner** — final gate chain and release integrity

Actual people must be explicitly assigned. Agents must not assume identities or approval authority.

Role Acceptance means understanding and accepting assigned responsibility. It is not Gate Approval and is not Production Authorization.

## 11. Current Freeze Point

### Completed / Established

- Governance structure
- STEP 1–5B lifecycle and boundaries
- Evidence Checklist
- Role Assignment Matrix
- Role Assignment Memo
- Role Acceptance Form
- Agent Handoff Package

### Not Yet Completed

- Actual Role Assignment
- Individual Role Acceptance
- Gate Review
- Final Authorization
- Production Code Authorization

## 12. Next Step

When the project proceeds to the next Governance stage, begin with **Role Assignment** using the approved Governance Documents and the Role Assignment Matrix.

Do not skip directly from technical preparation to Production.

**Preparation ≠ Authorization**

**Technical Pass ≠ Production Authorization**

**Governance → Assignment → Acceptance → Gate Review → Authorization**
