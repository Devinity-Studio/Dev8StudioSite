# Dev8StudioSite — MVP V1 Implementation Blueprint

> Working Product + Implementation Plan — not Governance

## 1. MVP V1 Goal

The first official launch should prove one complete customer journey:

```
Customer
  ↓
Requirement Wizard OR Product Playground
  ↓
Contextual Requirement Capture
  ↓
Requirement Set
  ↓
Wizard continuation OR direct Submit
  ↓
BRM-compatible record
  ↓
Dev8Studio review
```

MVP V1 is intentionally **BRM-compatible**, not a full BRM platform.

The objective is to prove that a customer can:

1. explain a need in ordinary language;
2. discover a product through Showcase / Playground;
3. capture a customization idea exactly where it occurs;
4. collect multiple contextual requests into one Requirement Set;
5. clarify them with the Wizard or submit them as captured;
6. give Dev8Studio enough context to understand what was requested and where it came from.

## 2. MVP V1 Scope

### In scope

- Public Dev8StudioSite landing experience
- Product Showcase
- Product Playground shell / supported demo scenarios
- Requirement Wizard
- Contextual Requirement Capture
- Requirement Set
- Context-aware role/view switching inside supported Playground scenarios
- Submit-as-captured
- Continue-with-Wizard
- BRM-compatible record model
- Source Journey + Selected Context integrity
- Basic review/receipt state
- Git-controlled product/content configuration

### Explicitly out of MVP V1

- Full BRM Studio
- Full Project Room
- Multi-Agent orchestration
- Graphic Coding
- Developer Workbench
- AI processing of user problem descriptions
- Authentication
- Admin Portal
- CRM Sync
- Billing
- File Uploads
- Production GitHub project automation
- Marketing Automation

These remain Seeds / future capability unless separately approved.

## 3. MVP V1 Product Surface

### Home

Primary message:

> คุณเล่าความต้องการ เราช่วยทำให้มองเห็น ตรวจสอบได้ และพัฒนาได้จริง

Primary actions:

- เริ่มเล่าความต้องการ
- ทดลอง Product Playground
- ดูผลงาน / Solutions

The Home page should lead users into an experience, not only describe services.

### Showcase

Each product card should expose only truthful lifecycle information.

For supported products:

- what problem it addresses;
- who uses it;
- what can be demonstrated;
- current lifecycle status;
- CTA to Playground when a real demo exists;
- CTA to Requirement Discovery when the user wants something similar or customized.

### Product Playground

The Playground is both:

> Product Experience + Requirement Discovery

Minimum interaction model:

```
Open Product
  ↓
Select Scenario / Role
  ↓
Perform Action
  ↓
See Result
  ↓
Capture Requirement at current point
```

The Requirement action must be available without forcing the user to leave the current context.

### Requirement Wizard

Conversation-first, form-second.

The Wizard should collect:

- problem / desired outcome;
- users / roles;
- current workflow;
- desired change;
- constraints;
- business rules when known;
- captured Playground Requirements.

The Wizard should clarify uncertainty instead of silently inventing missing information.

## 4. Contextual Capture Contract

Every contextual capture should retain, where available:

- capture_id
- product_id
- playground_session_id
- source_journey
- selected_context
- actor / view
- action
- UI location / element
- customer_statement
- timestamp
- requirement_state
- requirement_set_id

### Source Journey

The immutable journey reference showing how the user reached the capture point.

### Selected Context

The context currently being viewed or selected.

Changing role/view must never overwrite the original journey or previous captures.

## 5. Requirement Set

A Requirement Set groups captures from one customer journey.

Example:

```
Requirement Set
├── Customer / Payment
├── Collector / Notification
├── Leader Line / Monitoring
└── Manager / Dashboard
```

Each item keeps its own Context while the Set provides the whole picture.

## 6. Requirement State

MVP uses the smallest useful state model:

```
Captured
   ↓
Understood
   ↓
Clarified
   ↓
Confirmed
```

Only a confirmed item is treated as a final Requirement for downstream work.

Submit-as-captured may preserve the state as **Captured**; submission must not falsely promote it to Confirmed.

## 7. Two-Layer BRM Boundary

MVP establishes the boundary for future BRM without building full BRM.

### Layer 1 — Context / Idea

Stores thinking that is still forming:

- conversation context;
- ideas;
- observations;
- questions;
- challenges;
- candidate decisions;
- open questions.

This layer is not a backlog and does not imply approved work.

### Layer 2 — Structured BRM

Stores information that has been understood and deliberately promoted:

- Seed;
- Requirement;
- Business Rule;
- Decision;
- Architecture;
- Evidence;
- Traceability;
- Project references.

Core rule:

> Capture everything. Commit only what we understand.

## 8. Super Brain Boundary

Future BRM should provide a Super Brain + Best Friend interface.

The assistant can:

- talk with the human;
- understand the current Context;
- ask clarifying questions;
- challenge assumptions;
- summarize;
- propose promotion from Context to structured BRM.

The assistant must not silently become the Source of Truth.

Human confirmation and BRM state remain authoritative.

Conceptual flow:

```
Human ↔ Super Brain
          ↓
   Context / Idea Layer
          ↓
   Human confirmation
          ↓
   Structured BRM
          ↓
       GitHub
```

This is a future capability boundary. MVP V1 only needs to preserve the Context model so the interface can be added later without replacing the foundation.

## 9. Implementation Architecture

Use the existing Dev8StudioSite direction:

- Next.js App Router
- TypeScript strict
- server-first / progressive enhancement
- Git-controlled content
- server-side handling for sensitive data
- Route Handler for submission
- PostgreSQL as future system of record
- no browser direct access to production database

Recommended module boundaries:

```
src/
  app/
    (marketing)/
    playground/
    requirement/
  components/
    site/
    playground/
    requirement/
  domain/
    context/
    requirement/
    playground/
  lib/
    validation/
    persistence/
```

The exact folder structure may adapt to the actual implementation repository. The contract boundaries are more important than the folder names.

## 10. Persistence Boundary

MVP should be able to persist a BRM-compatible submission without implementing the full BRM database.

Minimum conceptual records:

- PlaygroundSession
- ContextSnapshot
- RequirementCapture
- RequirementSet
- SubmissionReceipt

The persistence implementation must keep:

```
original customer words
+
captured context
+
journey reference
+
current state
```

Do not replace original input with an AI-generated interpretation.

## 11. Product Playground Adapter

Each demo should expose a small common contract:

```
Product
  ├── identity
  ├── lifecycle
  ├── scenarios
  ├── roles / views
  └── contextual capture points
```

This keeps the Playground modular.

A DCM scenario can later be replaced or expanded without changing the Requirement Capture contract.

## 12. DCM MVP Scenario

The first believable example:

```
DCM
 ↓
View as Customer
 ↓
Send TestSlip
 ↓
Switch View → Collector
 ↓
See notification
 ↓
+ Requirement
 ↓
"อยากให้แจ้งเตือนมีเสียงด้วย
เพราะพนักงานไม่ได้เปิดหน้าจอนี้ตลอดเวลา"
 ↓
Requirement Set
```

The captured item should retain the exact point of discovery.

Additional role switches can create additional captures without losing earlier context.

## 13. MVP Implementation Phases

### Phase 0 — Reconcile

Verify:

- current repository structure;
- current Governance;
- current production authorization;
- existing site implementation;
- existing demo assets;
- existing database capability.

**Gate:** no implementation starts from assumptions.

### Phase 1 — Foundation

Implement and test:

- Product model;
- Playground session;
- Context Snapshot;
- Requirement Capture;
- Requirement Set;
- state model;
- validation;
- source journey integrity.

**Gate:** data and transitions are testable without UI.

### Phase 2 — Requirement Wizard

Implement:

- entry;
- conversation/form capture;
- review;
- clarification;
- confirmation;
- Requirement Set import.

**Gate:** a user can produce a structured submission from ordinary language.

### Phase 3 — Playground

Implement:

- product showcase;
- scenario selection;
- role/view switching;
- real supported interaction;
- contextual Requirement action.

**Gate:** capture can happen at the exact point of use.

### Phase 4 — Join the Journeys

Connect:

```
Wizard
   ↕
Requirement Set
   ↕
Playground Capture
```

Support:

- continue in Wizard;
- submit as captured.

**Gate:** both entry paths produce the same BRM-compatible submission contract.

### Phase 5 — Evidence

Verify:

- raw input preserved;
- context preserved;
- role/view preserved;
- journey preserved;
- multiple captures grouped correctly;
- state transitions correct;
- submission persisted;
- receipt returned;
- no unrelated data leakage.

**Gate:** Data → Business Logic → UI → Evidence all agree.

## 14. MVP Acceptance Journey

A V1 candidate is not ready until this complete journey works:

```
1. Open Dev8StudioSite
2. Understand the value
3. Open Showcase / Playground
4. Select a supported product
5. Enter a scenario
6. Perform a real action
7. Capture a Requirement at that exact point
8. Change role/view
9. Perform another action
10. Capture another Requirement
11. Review the Requirement Set
12. Continue with Wizard OR submit as captured
13. Receive confirmation / receipt
14. Dev8Studio can inspect the submission and its context
```

## 15. Evidence Gate

For every implementation increment:

- git diff contains only intended files;
- tests pass from the actual repository;
- runtime behavior is observed;
- persisted records are inspected where applicable;
- no simulated success is accepted as evidence;
- no claim of Production readiness without explicit authorization.

## 16. Future Extension Contract

MVP should leave stable seams for:

- Full BRM Studio
- Project Room
- Super Brain interface
- Multi-Agent orchestration
- Developer Workbench
- Graphic Coding
- advanced Traceability / Impact Analysis
- GitHub / Figma / Vercel / Supabase adapters
- external-tool orchestration

Principle:

> Design for the future, Build for the present.

> Build Small — Design for Extension.

> Build the Core, Integrate the Ecosystem — Reliably.

## 17. MVP Definition of Done

MVP V1 is complete when:

- the customer can enter through Wizard or Playground;
- the Playground supports contextual capture;
- multiple captures form a Requirement Set;
- original context is preserved;
- Wizard and direct submission share one contract;
- the submission is inspectable by Dev8Studio;
- the system does not claim unsupported capabilities;
- the implementation passes Evidence Gate.

Anything beyond this belongs to the next approved increment.
