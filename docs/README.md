# Dev8StudioSite — Project Documentation

## Purpose

This directory contains project documentation for Dev8StudioSite and the evolving BRM architecture.

The documentation is separated into distinct concerns:

- `governance/` — Governance decisions and their approved status.
- `agent-handoff/` — context continuity for Agents; informational only.
- Product / implementation documents — working plans and architecture; they do not authorize Production by themselves.

## Authority Boundary

**Governance Documents = Source of Truth for Governance.**

Working documents may describe architecture, product direction, MVP scope, and implementation plans, but they must not be treated as Governance merely because they use terms such as "locked", "core", or "canonical".

## Current Governance Freeze Point

The project remains at the Governance Freeze Point.

Current sequence:

`Governance → Assignment → Acceptance → Gate Review → Authorization`

Current Production Code status:

**🔴 NOT AUTHORIZED**

Preparation may continue where permitted, but preparation is not authorization.

## Current Strategic Priority

As of 2026-10-02, BRM has a new First Priority:

> **BRM Operations Core — an internal tool that helps Dev8Studio monitor, understand, and operate launched products with Human ↔ AI collaboration.**

The first BRM user is the Dev8Studio owner / operator.

The first BRM MVP is therefore **MVP V2 — Operations Core**, not the earlier customer-facing Requirement Management MVP.

The earlier Requirement Management work is preserved as a later BRM layer / future capability. It is not discarded.

## Primary Working Documents

- `BRM-MVP-V2-OPERATIONS-CORE.md` — current BRM First Priority and MVP boundary.
- `BRM-MVP-V1-IMPLEMENTATION.md` — superseded customer-facing MVP plan; retained for historical/design reference.
- `DEV8STUDIO-SITE-MVP-V1-PLAN.md` — site planning; must align with the new strategic priority.
- `DEV8STUDIO-SITE-WORK-PLAN-AND-SCOPE.md` — consolidated working plan; requires reconciliation with the new BRM priority.
- `BRM-2-LAYER-CONTEXT-STRUCTURE.md` — context / structured BRM boundary.
- `BRM-CONTEXTUAL-REQUIREMENT-JOURNEY.md` — customer-facing Requirement Discovery design retained for later BRM capability.
- `BRM-SEEDS-POST-MVP.md` — future seeds and architectural extensions.
- `MVP-V1-WORKING-SET.md` — previous customer-facing MVP working set; retained as historical reference until fully reconciled.

## Important Scope Boundary

BRM V2 is internal-first.

The public Dev8StudioSite should primarily present Dev8Studio products — especially Secretary and Meow World — and route users to real product destinations when those destinations are genuinely available.

BRM should remain behind the scenes until its internal value and operational reliability have been demonstrated.

## Core Operating Loop

```
Product
  ↓
Real Usage
  ↓
Evidence
  ↓
BRM
  ↓
AI Analysis
  ↓
Human Decision
  ↓
Action
  ↓
Verification
  ↓
Learning
  ↓
BRM
```

This loop is the first BRM vertical slice to prove.
