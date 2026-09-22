# BRM AI Experiment — Round 1: Requirement Understanding

**Test date:** 22 September 2569 (2026-09-22)  
**Project:** Dev8StudioSite / Bidirectional Requirement Modeling (BRM)  
**Round:** Round 1 — Requirement Understanding  
**Status:** COMPLETE

## 1. Experiment Purpose

This experiment tests whether AI can understand a human requirement from natural language without prematurely turning assumptions into facts or jumping to a solution.

The AI was instructed to:

- understand Context, Actor, Action, and Need;
- distinguish Explicit / Inferred / Unknown context;
- expose Assumptions and Ambiguities;
- ask the human questions before confirming a Requirement;
- maintain a Confidence Boundary;
- preserve traceability back to the original Human Statement;
- not write Code, Architecture, Database Schema, UI, or immediately propose a Feature;
- not self-score or compare itself with other models.

## 2. Common Test Input

> "ผมลอง DCM ในมุมลูกหนี้ แล้วตอนส่ง TestSlip อยากให้พนักงานได้รับเสียงแจ้งเตือนด้วย เพราะพนักงานไม่ได้เปิดหน้าจอตลอดเวลา"

## 3. Models Tested

| Model | Status |
|---|---|
| Gemini 3.8 Flash | Complete |
| DeepSeek V3.2 | Complete |
| Claude Opus 5 | Complete |
| GLM 5.3 | Complete |
| Kimi K2.7 Code | Complete |

All five models received the same Human Statement and the same Requirement Understanding instructions independently.

## 4. Common Understanding Observed

Across the five responses, the following core structure was consistently recognized:

**Actor**
- debtor-side context / debtor role;
- staff.

**Action**
- TestSlip is sent from the debtor-side journey.

**Observed Context / Problem**
- staff do not keep the relevant screen open or watched continuously.

**User-proposed Means**
- the user wants a sound notification.

**Underlying Need candidate**
- staff should be able to become aware of the TestSlip event without relying on continuous visual monitoring.

This common understanding is an observation from the experiment, not a promoted Requirement.

## 5. Main Divergence Observed

The models differed mainly in what they inferred beyond the Human Statement.

Examples of inferred details included:

- DCM being a debt-management system;
- TestSlip being payment evidence or a document;
- staff needing to review or act on TestSlip;
- an existing visual notification already being present;
- the event requiring immediate or real-time response;
- the speaker being a tester rather than another possible project role.

These may be true in the real DCM context, but they are not established by the Human Statement alone.

**Experiment finding:** AI can understand context quickly, but the same ability can cause unsupported context to be introduced.

## 6. Useful vs Unsafe Inference

### Useful Inference

A useful inference can open a question without being promoted to fact.

Example:

> The deeper Need may be staff awareness without continuous screen monitoring, while sound may be a proposed Means.

This helps BRM discover what should be clarified.

### Unsafe Inference

An unsafe inference becomes dangerous when it is treated as confirmed fact.

Examples:

- TestSlip = payment evidence;
- staff = person responsible for reviewing the slip;
- the system already has visual notification;
- the event must be handled immediately.

These must remain marked as inference/unknown until supported by human confirmation or evidence.

## 7. Key BRM Signals

### 7.1 Need != Means

The experiment strongly surfaced the distinction:

**Need**
> Staff need to become aware of the TestSlip event without relying on continuous visual monitoring.

**User-proposed Means**
> Sound notification.

BRM should preserve both separately.

A future implementation could change from sound to another notification mechanism without necessarily changing the underlying Need.

### 7.2 Unknown is Data

An Unknown is not a hole for AI to fill.

Correct flow:

**Unknown -> Question -> Human Confirmation**

not:

**Unknown -> AI Guess -> Requirement**

### 7.3 AI Inference Must Remain Visible

If AI infers something, BRM should preserve that it was inferred.

AI output must not silently become system truth.

### 7.4 Question Quality Matters

Requirement Understanding quality is not only about producing a polished Candidate Requirement.

It also depends on whether AI can identify what it does not know and ask the human the right question before promotion.

### 7.5 Traceability Must Work Both Ways

The experiment reinforces the need for:

**Human Statement -> Context -> Actor -> Action -> Need -> Candidate Requirement -> Human Confirmation -> Requirement**

and reverse traceability:

**Requirement -> Why -> Need -> Human Statement -> Original Context / Journey**

This is a concrete BRM signal for the "Bidirectional" aspect of BRM.

## 8. Proposed BRM Boundary Revealed by Round 1

Round 1 suggests a boundary between AI assistance and BRM authority:

**AI**
- Understand;
- detect ambiguity;
- expose assumptions;
- propose interpretations;
- ask questions;
- structure candidate understanding.

**BRM**
- preserve source context;
- preserve inference and uncertainty;
- preserve traceability;
- maintain state;
- record evidence;
- hold the promotion boundary.

**Human**
- confirms meaning;
- resolves ambiguity;
- decides whether a Candidate Understanding becomes a Requirement.

Therefore:

> AI may infer, but BRM must remember what was inferred.

## 9. Experiment Principle Candidates

### Principle A

> **Capture everything. Commit only what we understand.**

### Principle B

> **Unknown is Data, not a hole for AI to fill.**

### Principle C

> **AI may infer, but BRM must remember what was inferred.**

These are experiment-derived candidate principles. They are not automatically approved Principles until reviewed through the Dev8Studio governance process.

## 10. What This Experiment Was Not

This experiment did **not** determine:

- which model is best;
- which model should be selected;
- which output is the final Requirement;
- what the DCM implementation should be;
- what notification technology should be used;
- any production architecture.

The purpose was to learn what BRM needs to preserve and control when AI participates in Requirement Understanding.

## 11. Next Experiment

**Round 2 — Challenge Agent**

The next experiment should test whether AI can challenge an existing AI interpretation rather than simply produce another polished interpretation.

Suggested focus:

- Fact?
- Inference?
- Unsupported?
- Contradiction?
- Missing Context?
- What should be asked?
- What must not be promoted?

The challenge should operate on the understanding produced from a Human Statement while keeping the Human Statement itself as the source context.

---

## Evidence Note

This document records the Round 1 experiment conducted on **22 September 2569** and the BRM design signals observed from the five independent model responses. It is an experiment record, not an authorization to implement the resulting ideas.
