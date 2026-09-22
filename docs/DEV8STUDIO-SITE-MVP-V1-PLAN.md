# Dev8StudioSite + BRM — MVP V1 Plan

> Implementation planning document — not Governance

## Strategic Decision

Dev8StudioSite and BRM are designed together, but full BRM is not built before launch.

The correct sequence is:

```
Stable BRM-compatible roots
        +
Dev8StudioSite MVP
        ↓
Proven vertical slice
        ↓
Full BRM modules
```

This avoids both extremes:

- building a full BRM platform before there is a customer journey;
- building a website that later needs BRM bolted onto it.

## Priority Order

### P0 — Launch foundation

1. Context model
2. Requirement Capture contract
3. Requirement Set
4. Playground session / Source Journey
5. Requirement Wizard contract
6. Product / Showcase contract

### P1 — MVP experience

7. Home
8. Showcase
9. Playground
10. Contextual capture UI
11. Requirement Set review
12. Wizard continuation
13. Submit-as-captured
14. Receipt / review handoff

### P2 — Evidence and hardening

15. Validation
16. persistence
17. state transition tests
18. context integrity tests
19. runtime verification
20. privacy / security checks
21. truthfulness checks

### P3 — Post-MVP Seeds

- Full BRM Studio
- Project Room
- Super Brain interface
- Developer Workbench
- Multi-Agent
- Graphic Coding
- Advanced Traceability / Impact Analysis
- GitHub Project Lifecycle orchestration
- Figma / Vercel / Supabase adapters

## Implementation Order by Dependency

```
Context
  ↓
Requirement Capture
  ↓
Requirement Set
  ↓
Wizard
  ↓
Playground
  ↓
Contextual Capture
  ↓
Join Wizard + Playground
  ↓
Persistence
  ↓
Evidence
```

Why this order:

- Context is the stable root.
- Requirement Capture is the contract between Playground and BRM.
- Requirement Set allows multiple contextual discoveries.
- Wizard structures and clarifies.
- Playground creates real discovery points.
- Joining both paths proves the product idea.
- Persistence and Evidence prove that the result is real.

## Gate Strategy

### Gate A — Contract

No UI work until the data contracts are explicit.

### Gate B — Business Logic

Prove:

- capture;
- grouping;
- state transitions;
- source journey preservation;
- selected context changes;
- direct submit;
- wizard continuation.

### Gate C — UI

Verify the UI reflects actual state.

### Gate D — Runtime

Use the real application and actual supported demo flow.

### Gate E — Evidence

Verify:

- Git scope;
- tests;
- runtime;
- persistence;
- output;
- no simulated evidence.

## Product Experience Rule

The customer should never need to understand:

- BRM;
- Requirement Set;
- Context Snapshot;
- Source Journey;
- Business Rule;
- Traceability.

Those are system concepts.

The customer sees:

> เล่า → ทดลอง → พบสิ่งที่อยากเปลี่ยน → กด Requirement → ตรวจสอบ → ส่ง

## Internal Experience Rule

Dev8Studio sees:

> Context → Requirement → Project → Feature → Test → Evidence

That difference is intentional.

## Launch Success

MVP V1 is successful when the team can observe a real customer journey and answer:

1. What did the customer ask?
2. Where did they ask it?
3. What were they doing?
4. Which role/view were they using?
5. What did they originally say?
6. What was clarified?
7. What was finally confirmed?
8. Can Dev8Studio continue the work without losing that context?

If the system cannot answer these questions, the MVP vertical slice is not proven.
