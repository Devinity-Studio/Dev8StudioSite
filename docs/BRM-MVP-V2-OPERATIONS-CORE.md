# Dev8Studio BRM — MVP V2 Operations Core

> Working Product + Implementation Plan — not Governance  
> First Priority reset: 2026-10-02

## 1. Strategic Reset

Dev8Studio has changed the first priority of BRM.

BRM is **not** currently treated as a public Requirement Management Product or as a feature set that must be exposed to customers.

The first objective is:

> **Build BRM as the internal tool that helps a small Dev8Team operate, monitor, understand, and continuously improve launched products.**

The primary human user of this MVP is the Dev8Studio owner / operator.

The first practical question is not:

> “Can BRM collect a customer's Requirement?”

It is:

> **“Can BRM help one person understand what is happening across the systems they are responsible for, identify what needs attention, and make informed decisions without having to inspect every system manually?”**

## 2. Bidirectional Meaning

For this phase:

> **Bidirectional = Human ↔ AI**

Human and AI work together through BRM.

### AI responsibilities

AI may:

- observe structured evidence;
- correlate events;
- summarize current state;
- identify anomalies or patterns;
- analyze possible relationships;
- propose investigation paths;
- recommend actions;
- prepare reports;
- preserve learned knowledge.

### Human responsibilities

The human remains responsible for:

- decisions;
- approval of consequential actions;
- interpretation of ambiguous situations;
- production-impacting changes;
- security / privacy / data decisions;
- final acceptance of resolution where required.

Core loop:

```
Human
  ↕
BRM
  ↕
AI
  ↓
Evidence / Analysis / Recommendation
  ↓
Human Decision
  ↓
Action
  ↓
Verification
  ↓
BRM
```

AI must not silently become the Source of Truth.

## 3. Product Scope of the Operations Core

BRM V2 initially operates as a control and intelligence layer for Dev8Studio products.

Initial products:

- DCM
- Secretary
- Meow World Heart Edition

The architecture must allow additional products later without changing the semantic core.

Conceptually:

```
DCM ──────────┐
Secretary ────┼──> Evidence Layer ──> BRM
Meow World ───┘
                                      │
                              ┌───────┴───────┐
                              ↓               ↓
                           Human             AI
                              ↕               ↕
                              └──── BRM ─────┘
```

BRM should not ingest everything indiscriminately. Product integrations should expose meaningful operational Evidence.

## 4. MVP V2 Capability Areas

### 4.1 Product Awareness

BRM must know the products it is responsible for.

Minimum conceptual information:

- product identity;
- environment;
- deployment/version;
- lifecycle state;
- responsible owner;
- critical journeys;
- current health;
- active incidents;
- recent changes.

The purpose is to answer:

> **What are we responsible for, and what is their current state?**

### 4.2 Evidence Intake

Products and operational tools may provide structured Evidence such as:

- runtime errors;
- failed actions;
- failed persistence;
- degraded workflows;
- deployment events;
- support cases;
- user feedback;
- verification results;
- operational metrics.

Evidence must retain enough context to support investigation.

Minimum conceptual fields:

- evidence_id;
- product_id;
- environment;
- timestamp;
- source;
- event type;
- severity;
- affected journey / capability where known;
- correlation identifier where safe;
- summary;
- raw sensitive payload excluded unless explicitly authorized.

Rule:

> **Evidence is evidence. It is not automatically a Requirement, Decision, or Truth about cause.**

### 4.3 Health and Incident Detection

BRM should surface operational state rather than require the human to inspect raw logs.

Example:

```
DEV8 DAILY

Secretary      🟢 Healthy
Meow World     🟡 Attention
DCM            🟢 Healthy

⚠️ 1 Active Incident
```

Health is a derived operational view. It must be explainable through Evidence.

An Incident should contain:

- what happened;
- when it started;
- current status;
- affected product / journey;
- impact evidence;
- related changes;
- linked Evidence;
- assigned responsibility;
- investigation state.

### 4.4 Incident → Evidence → Context

For every meaningful incident, BRM should help answer:

- What happened?
- Where?
- When?
- Who / what is affected?
- How do we know?
- What changed before it happened?
- What Evidence supports the relationship?
- What remains unknown?

Example:

```
Incident
  ↓
Evidence
  ↓
Critical Journey
  ↓
Recent Deployment
  ↓
Possible Relationship
  ↓
AI Analysis
```

A possible cause remains a hypothesis until supported by sufficient Evidence.

### 4.5 AI Analysis

AI should transform Evidence into useful operational understanding.

The initial AI analysis contract is:

```
Observe
  ↓
Correlate
  ↓
Analyze
  ↓
Explain
  ↓
Recommend
```

AI output should distinguish:

- Fact / observed Evidence;
- correlation;
- inference;
- uncertainty;
- missing context;
- recommendation.

AI must not present an inference as an observed fact.

### 4.6 Human Decision

BRM must make the human decision boundary explicit.

Possible actions:

- acknowledge;
- investigate;
- assign;
- accept recommendation;
- reject recommendation;
- escalate;
- create Requirement;
- create Decision;
- approve production action;
- mark resolved.

Consequential actions require the appropriate human authority.

### 4.7 Resolution → Verification → Learning

An incident is not complete merely because a fix was deployed.

The operational loop is:

```
Detected
  ↓
Classified
  ↓
Investigating
  ↓
Action / Fix
  ↓
Deploy
  ↓
Runtime Evidence
  ↓
Verification
  ↓
Resolved
  ↓
Learning
```

The final record should preserve:

- what happened;
- what was changed;
- why it was changed;
- who approved the consequential decision;
- Evidence before / after;
- verification result;
- reusable knowledge.

## 5. Critical Journey Model

BRM should monitor journeys, not only technical components.

A Critical Journey is an end-to-end user or business flow where failure has meaningful impact.

Conceptual model:

```
Input
  ↓
Intent / Context
  ↓
Action
  ↓
Persistence / Processing
  ↓
Result
  ↓
User-visible completion
```

Each product should define a small number of Critical Journeys first.

Examples:

### Secretary

```
User request
  ↓
Intent
  ↓
Context
  ↓
Action
  ↓
Persistence
  ↓
Result
```

### Meow World

```
Login
  ↓
Home
  ↓
Record data
  ↓
Persist
  ↓
Reload
  ↓
Data remains correct
```

### DCM

A production journey may include:

```
Payment / TestSlip
  ↓
Allocation / processing
  ↓
Collector workflow
  ↓
Notification
  ↓
Completion evidence
```

The exact Critical Journeys must be reconciled against each real product before implementation.

## 6. What the Human Should See

BRM should not become a wall of metrics.

The primary operator experience should answer:

> **What needs me?**

Example:

```
WHAT NEEDS YOU?

🔴 1 Critical
Secretary — Monthly Summary save failures

🟡 2 Attention
Meow World — Photo workflow abandonment increased
Meow World — Storage growth is unusual

🟢 Healthy
DCM
```

Each item should provide:

- What happened?
- Why does it matter?
- Who / what is affected?
- What Evidence supports it?
- What changed?
- What does AI think?
- What is still unknown?
- What can AI safely do?
- What requires human decision?

## 7. Reporting and Analysis

BRM should produce three initial reporting modes.

### Daily — Current State

Short operational summary:

- product health;
- active incidents;
- important changes;
- items requiring attention.

### Periodic — Trend / Analysis

AI-assisted analysis may identify:

- increasing / decreasing failure patterns;
- repeated support problems;
- emerging usage patterns;
- recurring incidents;
- effects after changes;
- operational cost trends;
- candidate improvement areas.

Reports must distinguish measured facts from analysis.

### Event-driven — Immediate Attention

For high-impact conditions:

- critical journey failure;
- data integrity risk;
- security / privacy signal;
- broad user impact;
- repeated production failure;
- unexpected operational condition.

Notifications should contain enough context to decide whether to open the incident, but must not leak sensitive data.

## 8. Warning Model

Initial warning classes:

### A — Product Health

- error spike;
- crash;
- latency degradation;
- failed persistence;
- critical journey failure.

### B — User Experience

- repeated attempts;
- abandonment;
- workaround behavior;
- unexpected workflow;
- support pattern.

### C — Data Integrity

- missing data;
- duplicate data;
- inconsistent state;
- synchronization failure;
- unexpected data growth;
- Evidence/state mismatch.

### D — Development / Change Risk

- error increase after deployment;
- regression;
- configuration drift;
- failed migration;
- dependency or integration failure.

### E — Business / Sustainability

- active usage trend;
- retention trend;
- feature adoption;
- operational cost;
- revenue / sustainability signals.

Business metrics must not hide Product Health or Data Integrity problems.

## 9. Human + AI Operating Model

The intended responsibility boundary is:

| Activity | AI | Human |
|---|---:|---:|
| Observe Evidence | ✓ | |
| Correlate | ✓ | |
| Summarize | ✓ | |
| Detect anomaly | ✓ | |
| Propose diagnosis | ✓ | |
| Recommend action | ✓ | |
| Approve consequential action | | ✓ |
| Security / privacy decision | Assist | ✓ |
| Production-impacting decision | Assist | ✓ |
| Verify resolution | Assist | ✓ |
| Preserve learned knowledge | Assist | ✓ |

The goal is not “zero humans”.

The goal is:

> **Make a small human team capable of operating a growing product system without keeping the whole system in their heads.**

## 10. Knowledge Compounding

Resolved incidents should improve future operations.

Conceptual progression:

```
Incident #001
Human investigates
  ↓
Knowledge captured

Incident #042
AI recognizes pattern
  ↓
Human verifies

Incident #087
AI prepares investigation
  ↓
Human approves

Known Pattern
  ↓
Safe automation may be considered
  ↓
Evidence
```

Automation is earned through repeated evidence, not assumed from the first occurrence.

## 11. Relationship to Requirement Management

The earlier customer-facing Requirement Management design is **not discarded**.

It becomes a later BRM layer that can consume operational reality.

Important boundary:

```
Operational Evidence
       ↓
Observation / Problem
       ↓
Human + AI analysis
       ↓
Candidate Requirement
       ↓
Clarify / Confirm
       ↓
Structured Requirement
```

Rule:

> **Evidence proves what happened. Evidence does not automatically become Requirement.**

Likewise:

> **AI inference does not automatically become Requirement.**

The existing Requirement Wizard, Contextual Requirement Capture, Requirement Set, and customer journey remain valid as future / subsequent BRM capabilities unless separately promoted into an approved scope.

## 12. Relationship to Dev8StudioSite

The public Dev8StudioSite should remain a **product gateway**, not an internal BRM dashboard.

Current intended Home direction:

- polished, modern, premium visual language;
- Secretary and Meow World as primary product stories;
- product entry points may redirect users to the appropriate App Store / Play Store destination when genuinely available;
- BRM remains behind the scenes.

The public website should not expose internal operational data.

BRM is initially an internal capability.

## 13. MVP V2 Scope

### In scope

1. Product registry
2. Product / environment awareness
3. Critical Journey registry
4. Evidence intake contract
5. Evidence normalization
6. Health state derived from Evidence
7. Incident model
8. Incident ↔ Evidence ↔ Context relationships
9. Human / AI responsibility boundary
10. AI analysis contract
11. Recommendation record
12. Human decision record
13. Resolution / verification record
14. Basic Daily / Periodic / Event-driven reporting model
15. Warning classification
16. Operator view focused on “What needs me?”
17. Initial Knowledge / Learning record
18. Adapter boundary for DCM / Secretary / Meow World

### Explicitly out of MVP V2

- Public BRM launch
- Customer-facing BRM Studio
- Full Requirement Wizard
- Full customer Requirement Set experience
- Graphic Coding
- Multi-Agent orchestration
- Autonomous production changes
- Automatic promotion of Evidence → Requirement
- Automatic AI authority over Source of Truth
- Full business intelligence suite
- Full billing / subscription management
- Broad external-tool marketplace

## 14. MVP V2 Acceptance Journey

A V2 candidate is not ready because a dashboard renders.

The smallest meaningful vertical slice is:

```
Product
  ↓
Critical Journey
  ↓
Operational Evidence
  ↓
BRM detects / records Incident
  ↓
BRM gathers related Evidence + Context
  ↓
AI analyzes
  ↓
AI recommends
  ↓
Human decides
  ↓
Action / Fix
  ↓
New Evidence
  ↓
Verification
  ↓
Resolved
  ↓
Knowledge retained
```

### V2 Definition of Done

The owner can open BRM and:

1. see the products being monitored;
2. see current health with explainable Evidence;
3. see an active incident;
4. inspect the related journey and Evidence;
5. see AI analysis separated from facts;
6. see the recommended next action;
7. make a human decision;
8. record or observe the resulting action;
9. verify the outcome with new Evidence;
10. close the incident;
11. retain the learning for future incidents.

If this cannot be demonstrated with real Evidence, the Operations Core is not proven.

## 15. Evidence Gates

Every implementation increment follows:

```
Reconcile
  ↓
Foundation
  ↓
Vertical Slice
  ↓
Evidence
```

Evidence must include, as applicable:

- actual repository diff;
- tests;
- runtime behavior;
- actual operational Evidence;
- persisted state;
- incident state transition;
- AI output with fact/inference separation;
- human decision record;
- post-fix verification.

Simulated success is not sufficient.

## 16. Future Expansion

After Operations Core is proven, BRM can grow in this order as evidence supports it:

1. Requirement Management layer
2. Project Room
3. Super Brain / Best Friend interface
4. Developer Workbench
5. Advanced Traceability / Impact Analysis
6. Multi-Agent orchestration
7. External tool ecosystem
8. Possible external BRM Product

The eventual goal may be:

> **A very small Technical + Support team can operate multiple Dev8Studio products because BRM preserves the operational knowledge, context, evidence, and decision history around the system.**

This is a target architecture, not a current capability claim.

## 17. Non-Negotiable Principles

> **BRM must help the human before it tries to replace the human.**

> **Evidence proves what happened; Evidence does not become Requirement automatically.**

> **AI may infer, but BRM must remember what was inferred.**

> **Every important recommendation must be explainable through Evidence.**

> **Human authority remains explicit.**

> **Automate only after the system has accumulated enough Evidence to justify automation.**

> **Build Small — Design for Extension.**

> **Design for the future, Build for the present.**

> **Build the Core, Integrate the Ecosystem — Reliably.**
