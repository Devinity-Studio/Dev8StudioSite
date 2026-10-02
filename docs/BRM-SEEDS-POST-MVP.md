# BRM Seeds — Post Operations Core

> Seed register — not approved implementation scope

The previous customer-facing BRM MVP is no longer the first priority.

The current First Priority is:

> **BRM Operations Core — internal tooling for Dev8Studio to operate launched products through Human ↔ AI collaboration.**

The seeds below are evaluated only after the Operations Core has been proven, unless separately promoted through the appropriate planning / Governance process.

## S1 — Requirement Management Layer

**Status:** Future Module

Bring the earlier customer-facing BRM concepts into the operational core:

- Requirement Wizard;
- Contextual Requirement Capture;
- Requirement Set;
- Requirement clarification;
- Requirement → Feature → Test → Evidence traceability.

Boundary:

> Evidence can create an observation or candidate problem, but it does not automatically become a Requirement.

## S2 — Context / Idea + Structured Layer

**Status:** Architectural Layer

Separate early thinking from promoted structured information:

```
Context / Idea
  ↓
Understand / Clarify
  ↓
Human Review
  ↓
Structured BRM
```

The earlier two-layer design remains valid.

## S3 — Super Brain + Best Friend Interface

**Status:** Future Module

Allow Human ↔ AI work inside BRM using bounded Context.

Capabilities may include:

- conversation;
- Context understanding;
- clarification;
- challenge;
- summarization;
- recommendation;
- promotion proposal.

The assistant is not the Source of Truth.

## S4 — Project Room

**Status:** Future Module

Project-specific Context Boundary containing:

- Current State;
- Principles;
- Requirements;
- Architecture;
- Tasks;
- Tests;
- Evidence;
- Decisions;
- external integrations.

## S5 — Project Lifecycle + GitHub Orchestration

**Status:** Future Integration / Architecture Seed

BRM may later create or link project/repository context and synchronize operational Evidence.

GitHub remains authoritative for GitHub permissions and Git operations.

## S6 — Developer Workbench

**Status:** Future Module

Potential capabilities:

- task breakdown;
- code scaffolding;
- schema / migration assistance;
- API / contract assistance;
- test generation;
- diagnosis;
- impact analysis;
- evidence collection.

## S7 — Multi-Agent Orchestration

**Status:** Future Module

Potential agents:

- Requirement Agent;
- Architect Agent;
- Developer Agent;
- Test Agent;
- Review Agent;
- Evidence Agent.

BRM provides shared Context and contracts. Agents do not replace BRM authority.

## S8 — Graphic Coding

**Status:** Future Module

Make system structure and behavior understandable / constructible through visual representations while preserving traceability.

## S9 — Advanced Traceability / Impact Analysis

**Status:** Future Module

Potential relationship:

```
Need / Problem
 ↕
Requirement
 ↕
Business Rule
 ↕
Project
 ↕
Feature
 ↕
Test
 ↕
Evidence
```

## S10 — External Tool Ecosystem

**Status:** Architecture Seed

Potential integrations:

- GitHub;
- Figma;
- Vercel;
- Supabase;
- future providers.

Use adapters so external providers do not become the semantic Source of Truth.

## S11 — Knowledge Compounding / Safe Automation

**Status:** Future Module

Use resolved incidents and verified operational patterns to improve:

- diagnosis;
- recommendations;
- support responses;
- safe automation.

Automation should be earned through repeated Evidence.

## S12 — External BRM Product

**Status:** Long-term possibility

Only consider exposing BRM externally after internal use demonstrates that it reliably creates value for Dev8Team.

Possible paths:

- internal-only operating system for Dev8Team;
- team product;
- public BRM product.

No decision is required now.

## Prioritization Rule

Do not prioritize Seeds by excitement alone.

Evaluate:

1. Internal operational need
2. Evidence
3. Business value
4. Architecture readiness
5. Dependency on Operations Core
6. Operational / Security cost
7. Replaceability / integration risk

## Seed Lifecycle

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

A Seed can become **Dormant**, **Rejected**, or **Reframed** without being lost.
