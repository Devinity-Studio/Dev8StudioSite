# Dev8StudioSite — Project Documentation

## Purpose

This directory contains project documentation for Dev8StudioSite.

The documentation is separated into two distinct concerns:

- `governance/` — references and indexes Governance decisions and their approved status.
- `agent-handoff/` — context continuity material intended to help new Agents understand the current project state without reading the entire conversation history.

## Authority Boundary

**Governance Documents = Source of Truth.**

Agent Handoff documents are context documents. They do not create, modify, extend, or override Governance requirements, acceptance criteria, or production authorization.

A document must not be treated as Canonical merely because an Agent labels it "Canonical". Canonical status is a Governance decision.

## Current Governance Freeze Point

The project is currently at the Governance Freeze Point and is waiting for the Role Assignment stage.

Current sequence:

`Governance → Assignment → Acceptance → Gate Review → Authorization`

Current Production Code status:

**🔴 NOT AUTHORIZED**

Preparation may continue where permitted, but preparation is not authorization.

## Related Documentation

This is the complete index of documents in this repository. Where a document states its own authority, that label is repeated here without changing it.

### Governance

- `governance/README.md` — Governance document index and status boundary. Does not create Governance requirements.

### Context continuity

- `agent-handoff/AGENT-HANDOFF.md` — current Agent Context Handoff. Informational context only.

### Product concept

- [`../README.md`](../README.md) — Dev8StudioSite product / website concept, IA, service model, BRM, V1 boundaries. Product Concept, not Governance.

### MVP V1 working set

Index: `MVP-V1-WORKING-SET.md`

- `MVP-V1-WORKING-SET.md` — MVP V1 working design set index and source-of-truth boundaries.
- `DEV8STUDIO-SITE-WORK-PLAN-AND-SCOPE.md` — consolidated work plan and scope definition. Working Plan, not Governance.
- `DEV8STUDIO-SITE-MVP-V1-PLAN.md` — MVP V1 implementation sequence, dependency order, and Gate strategy.
- `BRM-MVP-V1-IMPLEMENTATION.md` — MVP V1 implementation blueprint, contracts, and evidence gates.
- `BRM-2-LAYER-CONTEXT-STRUCTURE.md` — Context / Idea layer and Structured BRM layer boundary. Working Architecture Seed.
- `BRM-CONTEXTUAL-REQUIREMENT-JOURNEY.md` — Playground-driven contextual capture and Requirement Set. Working Product Concept.
- `BRM-SEEDS-POST-MVP.md` — post-MVP seed register S1–S9. Not approved implementation scope.

### Experiment records

- `experiments/BRM-AI-EXPERIMENT-ROUND-1-2026-09-22.md` — BRM AI Experiment Round 1. Experiment record, not an authorization to implement.
