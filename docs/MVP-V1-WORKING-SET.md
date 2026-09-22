# Dev8StudioSite + BRM — MVP V1 Working Set

This directory is the working design set for the first Dev8StudioSite MVP.

## Source-of-truth boundaries

- **Governance** — implementation authority and approved scope.
- **Dev8StudioSite Product Concept** — product direction.
- **BRM Context / Idea Layer** — ideas and context that are still forming.
- **Structured BRM** — promoted, reviewable, traceable records.
- **GitHub** — external repository, code/history, and project collaboration surface according to integration contracts.

Product concepts in this directory do not authorize production implementation by themselves.

## MVP V1 documents

1. [BRM-MVP-V1-IMPLEMENTATION.md](./BRM-MVP-V1-IMPLEMENTATION.md)
   - exact MVP boundary;
   - implementation architecture;
   - contracts;
   - DCM Playground scenario;
   - acceptance journey;
   - evidence gates.

2. [DEV8STUDIO-SITE-MVP-V1-PLAN.md](./DEV8STUDIO-SITE-MVP-V1-PLAN.md)
   - implementation sequence;
   - dependency order;
   - Gate strategy;
   - launch success criteria.

3. [BRM-2-LAYER-CONTEXT-STRUCTURE.md](./BRM-2-LAYER-CONTEXT-STRUCTURE.md)
   - Context / Idea Layer;
   - Structured BRM Layer;
   - promotion boundary;
   - Super Brain boundary;
   - Context Snapshot;
   - GitHub / external-tool relationship.

4. [BRM-CONTEXTUAL-REQUIREMENT-JOURNEY.md](./BRM-CONTEXTUAL-REQUIREMENT-JOURNEY.md)
   - Playground-driven Requirement Discovery;
   - contextual capture;
   - Requirement Set;
   - Source Journey integrity;
   - DCM TestSlip example.

## MVP V1 in one picture

```
                    Dev8StudioSite
                          │
          ┌───────────────┴───────────────┐
          │                               │
   Requirement Wizard              Product Showcase
          │                               │
          │                         Product Playground
          │                               │
          │                         Contextual Capture
          │                               │
          └───────────────┬───────────────┘
                          ↓
                  Requirement Set
                          ↓
               Wizard OR Direct Submit
                          ↓
                 BRM-compatible Record
                          ↓
                  Dev8Studio Review
```

## Implementation status

The current repository is a Product / Website Concept repository rather than a verified application runtime. The MVP implementation therefore starts with **Reconcile → Foundation → Vertical Slice → Evidence**.

No claim of a working production application should be made until the actual application scaffold, runtime, tests, persistence, and customer journey have been verified.

## Next implementation step

**Gate 0 — Reconcile the repository**

Verify the actual implementation repository/scaffold and approved Governance before adding application code.

Then implement the smallest vertical slice:

```
Context
  ↓
Requirement Capture
  ↓
Requirement Set
  ↓
Submit
  ↓
Receipt
```

Only after that contract is proven should the Playground and Wizard be connected.

## Core rules

> Build Small — Design for Extension.

> Design for the future, Build for the present.

> Capture everything. Commit only what we understand.

> Build the Core, Integrate the Ecosystem — Reliably.

> Never Outsource the Source of Truth.
