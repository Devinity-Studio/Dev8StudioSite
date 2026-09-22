# BRM Seeds — Post MVP V1

> Seed register — not approved implementation scope

These are architectural/product seeds identified while designing MVP V1. They should be evaluated after the MVP vertical slice is proven.

## S1 — BRM Context / Idea Layer + Structured Layer

**Status:** Architectural Seed  
**Purpose:** separate raw/early thinking from promoted, structured BRM information.

```
Conversation
  ↓
Context / Idea
  ↓
Understand / Clarify
  ↓
Human review
  ↓
Structured BRM
```

## S2 — Super Brain + Best Friend Interface

**Status:** Future Module  
**Purpose:** allow the human and Super Brain to work inside BRM using bounded Context.

Capabilities:

- conversation;
- Context understanding;
- clarification;
- challenge;
- summarization;
- promotion proposal.

The assistant is not the Source of Truth.

## S3 — Project Room

**Status:** Future Module  
**Purpose:** establish a Project Context Boundary containing project-specific:

- Current State;
- Principles;
- Requirements;
- Architecture;
- Tasks;
- Tests;
- Evidence;
- Decisions;
- external integrations.

## S4 — Project Lifecycle + GitHub Orchestration

**Status:** Future Integration / Architecture Seed

Concept:

```
BRM Project
  ↓
Create / Link Project Room
  ↓
Create / Link GitHub Repo
  ↓
Connect team / permissions
  ↓
Development
  ↓
Sync status / evidence
```

GitHub remains authoritative for GitHub repository permissions and Git operations.

BRM should use provider adapters rather than implement Git itself.

## S5 — Developer Workbench

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

## S6 — Multi-Agent Orchestration

**Status:** Future Module

Potential agents:

- Requirement Agent;
- Architect Agent;
- Developer Agent;
- Test Agent;
- Review Agent;
- Evidence Agent.

BRM provides shared Context and contracts. Agents do not replace BRM authority.

## S7 — Graphic Coding

**Status:** Future Module

Purpose: make system structure and behavior understandable/constructible through visual representations while preserving traceability to BRM.

## S8 — Advanced Traceability / Impact Analysis

**Status:** Future Module

Potential direction:

```
Business Need
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

Changes should be able to reveal affected downstream or upstream records.

## S9 — External Tool Ecosystem

**Status:** Architecture Seed

Potential integrations:

- GitHub;
- Figma;
- Vercel;
- Supabase;
- future providers.

Principle:

> Build the Core, Integrate the Ecosystem — Reliably.

Use adapters/contracts so an external provider can evolve or be replaced without changing BRM's semantic core.

## Prioritization Rule

Do not prioritize Seeds by excitement alone.

Evaluate:

1. Customer Need
2. Evidence
3. Business Value
4. Architecture Readiness
5. Dependency on MVP
6. Operational / Security Cost
7. Replaceability / Integration Risk

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

## Current Priority Boundary

Before S2–S9, prove MVP V1:

> Requirement Wizard + Showcase + Product Playground + Contextual Requirement Capture + Requirement Set + submission evidence.

Only proven seams should become foundations for the next branch.
