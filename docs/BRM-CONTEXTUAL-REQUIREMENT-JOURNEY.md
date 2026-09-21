# Dev8StudioSite + BRM — Contextual Requirement Journey

> Working Product Concept — not Governance

## Purpose

Dev8StudioSite and BRM should be designed together from launch.

BRM does not need to be a complete platform on day one. The important requirement is that the launch experience already has a BRM-compatible core: customer input can be captured with its context, collected across a real product journey, and traced back to where it came from.

## Launch Experience

After the official domain launch, the intended customer journey includes:

1. **Requirement Wizard** — the customer can start by explaining a problem or desired outcome.
2. **Product Showcase** — customers can see what Dev8Studio has built.
3. **Product Playground** — customers can actually try supported products/scenarios.
4. **Contextual Requirement Capture** — while using the Playground, the customer can create a Requirement from the exact point where the thought occurs.

The fourth capability is the key connection between Playground and BRM.

## Contextual Requirement Journey

A Requirement does not have to begin inside the Requirement Wizard.

It may emerge while the customer is:

- changing Actor / View
- changing workflow
- performing an Action
- inspecting a notification
- submitting a TestSlip
- moving between screens
- trying a business scenario
- discovering something that should be added, changed, or removed

The customer should be able to capture a Requirement at that point without leaving the Playground.

Conceptually:

```text
Product Playground
      ↓
Current Context
      ↓
Customer performs Action
      ↓
Customer discovers a need
      ↓
+ Requirement
      ↓
Contextual Capture
      ↓
Requirement Set
```

The customer does not need to know BRM terminology.

## Example — DCM TestSlip

Example journey:

```text
DCM Playground
  ↓
View as Customer
  ↓
Customer sends TestSlip
  ↓
Switch View → Collector
  ↓
Collector sees Payment notification
  ↓
Customer captures a Requirement at this point
```

For example:

> "อยากให้แจ้งเตือนมีเสียงด้วย เพราะพนักงานไม่ได้เปิดหน้าจอนี้ตลอดเวลา"

The captured item should retain context such as:

- Product: DCM
- Actor / View: Collector
- Context: Payment
- Action: Receive / inspect TestSlip notification
- UI element or location: Notification
- Customer statement
- Playground session / journey reference
- Relevant previous action(s)

The same customer may then switch to another role:

```text
Customer
  ↓
Collector
  ↓
Leader Line
  ↓
Manager
  ↓
Administrator
```

Each context can produce additional Requirements.

## Requirement Set

Requirements captured during one Playground journey should be collected together rather than treated as unrelated comments.

Example:

```text
My Requirement Set

01 Customer / Payment
   เลือก Slip จาก LINE ได้โดยตรง

02 Collector / Notification
   เพิ่มเสียงแจ้งเตือน

03 Leader Line / Monitoring
   แสดง Collector ที่ยังไม่ดำเนินการ

04 Manager / Dashboard
   แสดงยอด Pending รวม

05 Administrator / Notification
   ตั้ง Notification Rule ได้
```

The set preserves the individual contexts while allowing the customer to review the whole picture.

## Two Ways to Continue

After the customer finishes experimenting, the Requirement Set can follow two paths.

### Continue with Requirement Wizard

The Wizard takes the captured items and helps:

```text
Captured Requirements
      ↓
Understand
      ↓
Clarify
      ↓
Group
      ↓
Detect dependency / conflict
      ↓
Confirm
      ↓
Requirement Set
```

The Wizard must clarify rather than silently assume.

### Submit as Captured

The customer may also choose to submit without continuing the Wizard.

The submitted information should preserve:

- the customer's original words
- the captured Context
- the Product / Playground location
- Actor / View
- Action
- relevant journey information
- captured Requirement items

The system should not force the customer through a long technical form merely to submit an idea.

## Requirement State

A contextual capture should not automatically become a final Requirement.

Suggested conceptual lifecycle:

```text
Captured
   ↓
Understood
   ↓
Clarified
   ↓
Confirmed
   ↓
Requirement
```

This keeps the distinction between:

- what the customer actually said
- what the system understood
- what was clarified
- what the customer finally confirmed

## BRM Traceability

The same Requirement should be traceable in both directions.

Forward:

```text
Business Need
   ↓
Requirement
   ↓
System
   ↓
Feature
   ↓
Test
   ↓
Evidence
```

Backward:

```text
Evidence / Test
   ↑
Feature
   ↑
Requirement
   ↑
Business Need
   ↑
Original customer context
   ↑
Playground interaction
```

For example, a future Feature such as "Collector notification sound" should be traceable back to the exact Playground context in which the customer requested it.

This is the practical meaning of **Bidirectional Requirement Modeling** for Dev8StudioSite.

## Product Playground Is Also a Requirement Discovery Tool

The Playground is not only a product showcase.

It is also a controlled environment where customers can discover what they actually want by experiencing a workflow.

Therefore:

> **Playground = Product Experience + Requirement Discovery**

And:

> **Requirement Wizard = Requirement Clarification + Structuring**

They are different entry points into the same BRM model.

## Stable Roots, Flexible Branches

The launch should establish a small, stable BRM-compatible core without attempting to build the entire BRM platform.

### Stable roots

- Requirement identity
- Product identity
- Actor / View
- Context
- Action / location
- Source journey
- Requirement content
- Relationship / traceability
- Requirement state

### Flexible branches

Future capabilities can grow from the same model:

- Advanced Requirement Wizard
- Graphic Coding
- Product Playground expansion
- AI-assisted clarification
- AI agent orchestration
- Advanced BRM visualization
- Requirement versioning
- Collaborative modeling
- Requirement → Feature → Test → Evidence automation

This follows:

> **Build Small — Design for Extension**

and:

> **Adaptive Growth — Stable Roots, Flexible Branches**

## Context Integrity

The original customer journey must not be overwritten when the customer changes views.

For example:

- Source Journey = the sequence of Playground actions
- Selected Context = the context currently being viewed
- Captured Requirement = the customer's statement plus the context at capture time

Changing from Customer → Collector → Manager must add context to the journey, not erase the earlier context.

## Launch Boundary

For the official launch, the target is not "full BRM".

The target is one complete, believable vertical slice:

```text
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

Once this vertical slice is proven, the system can expand without replacing its foundation.

## Relationship to Governance

This document records the current Product Concept direction for Dev8StudioSite + BRM.

It does not by itself authorize implementation, change Governance, or override an approved scope.

Governance remains the source of truth for implementation authority and production scope.

---

**Core idea:**

> ลูกค้าไม่จำเป็นต้องรู้ว่า Requirement อยู่ตรงไหน  
> เพราะ Requirement สามารถเกิดขึ้นตรงจุดที่ลูกค้ากำลังทดลองและค้นพบสิ่งที่อยากเปลี่ยนได้เลย

And Dev8Studio should be able to remember not only **what** the customer asked for, but also **where, when, as whom, and while doing what** the requirement emerged.
