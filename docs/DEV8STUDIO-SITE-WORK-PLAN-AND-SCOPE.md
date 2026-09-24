# Dev8StudioSite + BRM — แผนงานและขอบเขตการทำงาน (Work Plan & Scope)

> **Working Plan Document — ไม่ใช่ Governance**
>
> เอกสารนี้สังเคราะห์จากเอกสารที่มีอยู่ใน repository เพื่อใช้เป็นแผนปฏิบัติงานและนิยามขอบเขต (Scope)
> ไม่ได้สร้าง แก้ไข ขยาย หรือตีความ Governance Requirement ใหม่ และไม่ใช่ Production Authorization

| Attribute | Value |
|---|---|
| Document Type | Working Plan / Scope Definition |
| Project | Dev8StudioSite + BRM |
| Derived From | README.md + `docs/**` (ฉบับ ณ วันที่จัดทำ) |
| Governance Authority | Governance Documents = Source of Truth |
| Production Authorization | 🔴 NOT AUTHORIZED |
| Scope Status | Working — ต้องผ่าน Review ก่อนถือเป็น Approved Scope |

---

## 0. วิธีอ่านเอกสารนี้

เอกสารนี้มี 3 ชั้นที่ต้องแยกออกจากกัน

```
ชั้นที่ 1  Digest        — สรุปว่า repo มีเอกสารอะไร และแต่ละฉบับมีอำนาจแค่ไหน
ชั้นที่ 2  Scope         — อะไรอยู่ในงาน อะไรไม่อยู่ และเส้นแบ่งคืออะไร
ชั้นที่ 3  Work Plan     — ลำดับงาน Gate และหลักฐานที่ต้องได้
```

**กติกา:** ถ้าเนื้อหาในเอกสารนี้ขัดกับ Governance ที่ได้รับอนุมัติ → Governance ชนะ และประเด็นขัดแย้งต้องเข้าสู่กระบวนการ Review ไม่ใช่แก้ตามเอกสารนี้

---

## 1. Digest — เอกสารใน Repository และระดับอำนาจ

### 1.1 ตารางสินค้าคงคลังเอกสาร

| # | เอกสาร | หน้าที่ | ระดับอำนาจ |
|---|---|---|---|
| 1 | `README.md` | Product / Website Concept — Vision, IA, Service Model, BRM, Lifecycle, Privacy, Pricing, MVP Concept, V1 Boundaries, Truthfulness, Architecture Direction | Product Concept — **ไม่ใช่** Governance |
| 2 | `docs/README.md` | ดัชนีเอกสาร + Authority Boundary + Freeze Point | Context / Index |
| 3 | `docs/governance/README.md` | ดัชนี Governance, สถานะ STEP 1–5B, Lifecycle, รายการอ้างอิงที่อนุมัติ | Index of Governance — สร้าง Requirement ใหม่ไม่ได้ |
| 4 | `docs/agent-handoff/AGENT-HANDOFF.md` | Context continuity สำหรับ Agent: Governance snapshot, 7 Operating Rules, Gate Model, Hard Stops, Roles | Context — ไม่มีอำนาจ Governance |
| 5 | `docs/MVP-V1-WORKING-SET.md` | ดัชนี Working Set + Source-of-truth boundaries + Gate 0 | Working Set — ยังไม่อนุญาต Production |
| 6 | `docs/DEV8STUDIO-SITE-MVP-V1-PLAN.md` | ลำดับความสำคัญ P0–P3, Dependency order, Gate Strategy A–E, Launch Success | Implementation Planning |
| 7 | `docs/BRM-MVP-V1-IMPLEMENTATION.md` | ขอบเขต MVP, Contract, DCM Scenario, Acceptance Journey, Evidence Gate, DoD | Working Product + Implementation Plan |
| 8 | `docs/BRM-2-LAYER-CONTEXT-STRUCTURE.md` | Context / Idea Layer, Structured BRM Layer, Promotion, Context Snapshot, Adapter | Working Architecture Seed |
| 9 | `docs/BRM-CONTEXTUAL-REQUIREMENT-JOURNEY.md` | Contextual Requirement Journey, Requirement Set, Traceability, Context Integrity | Working Product Concept |
| 10 | `docs/BRM-SEEDS-POST-MVP.md` | Seed Register S1–S9 + เกณฑ์จัดลำดับ | Seed — **ไม่ใช่** Approved Scope |
| 11 | `docs/experiments/BRM-AI-EXPERIMENT-ROUND-1-2026-09-22.md` | ผลทดลอง Round 1 (5 models) + BRM signals + Candidate Principles A/B/C | Experiment Record |

### 1.2 สาระสำคัญที่ต้องจำจากแต่ละกลุ่ม

**กลุ่ม Concept (1, 3, 9)**
- ลูกค้าไม่ต้องรู้คำศัพท์เทคนิค — เล่าปัญหา แล้วระบบช่วยจัดโครงสร้าง
- Requirement เกิดขึ้นได้ตรงจุดที่ลูกค้ากำลังทดลอง ไม่ต้องเริ่มที่ Wizard เสมอ
- `Playground = Product Experience + Requirement Discovery`

**กลุ่ม Boundary (4, 5, 6)**
- `Preparation ≠ Authorization` และ `Technical Pass ≠ Production Authorization`
- Agent ห้าม promote Implementation Preference ให้กลายเป็น Governance Requirement
- ลำดับที่บังคับ: `Governance → Assignment → Acceptance → Gate Review → Authorization`

**กลุ่ม MVP (7, 8, 9)**
- MVP V1 เป็น **BRM-compatible** ไม่ใช่ full BRM platform
- เก็บของจริงไว้เสมอ: `original customer words + captured context + journey reference + current state`
- ห้ามแทนที่คำพูดของผู้ใช้ด้วยข้อความที่ AI ตีความ

**กลุ่ม Seed / Experiment (10, 11)**
- S1–S9 เป็นอนาคต ต้องพิสูจน์ MVP V1 ก่อน
- `Unknown → Question → Human Confirmation` ไม่ใช่ `Unknown → AI Guess → Requirement`
- Candidate Principles จาก Experiment ยังไม่ใช่ Principle ที่อนุมัติ

---

## 2. ข้อเท็จจริงที่ล็อกแล้ว (Non-negotiables)

ข้อกำหนดเหล่านี้มีที่มาในเอกสารที่อนุมัติแล้ว และ **ไม่ใช่ทางเลือก**ในการทำงาน

1. **Source Journey เป็น immutable** และแยกออกจาก **Selected Context** ที่เปลี่ยนได้
2. **Lifecycle Status ≠ Demo Availability** — ห้ามใช้แทนกัน
3. **V1 มี Active Selected Context ได้หนึ่งรายการ**
4. การเปลี่ยน Role/View ต้อง **เพิ่ม** บริบท ไม่ใช่เขียนทับของเดิม
5. **Confirmation Snapshot** ต้องไม่เปลี่ยนหลังการยอมรับ submission
6. **Receipt Identifier** ต้องเป็น opaque และ non-sequential — และ Receipt ไม่ใช่ Authentication
7. **Consent** ต้อง required, ห้าม pre-select, มี policy link, และ backend ต้องเก็บ Policy Version + Timestamp; Marketing Consent แยกจาก Core Consent
8. **Domain rule ต้องมีนิยาม canonical เดียว** — ใช้ CTA Resolver / Contact Intent Configuration / Contact Form กลาง ไม่ทำซ้ำ
9. **Truthfulness** — ไม่มีข้อมูลจริง = ไม่แสดง (ห้ามสร้าง Customer Count, User Count, Revenue, Testimonial, Metric, SLA, Response Time, Demo/Product Availability, Case Study Result)
10. **Browser ห้ามเข้าถึง Production Database โดยตรง** และ Secret อยู่ฝั่ง Server เท่านั้น
11. **Production PII ห้ามอยู่ใน Local / Preview / Test**
12. **Logs ห้ามมี Full Submission หรือ PII**; Notification เป็น metadata-only และไม่ใช่ System of Record
13. **ห้ามใช้ Placeholder Privacy Policy ใน Production**
14. **AI V1 ห้ามส่ง Problem Description ไปยัง AI Provider** โดยไม่มี Privacy/Contract Approval แยก

---

## 3. สถานะปัจจุบัน (Current Position)

### 3.1 Governance State

| STEP | รายการ | สถานะ |
|---|---|---|
| STEP 1 | Architecture | 🔒 LOCKED |
| STEP 2 | UX / Context Contract | 🔒 LOCKED |
| STEP 3 | Visual Design System | 🔒 LOCKED |
| STEP 3A | Visual Component Specification | 🔒 LOCKED |
| STEP 4 | Implementation Planning & Technical Handoff | 🔒 LOCKED |
| STEP 5 | Build Readiness & Technical Stack Lock | 🟢 READY |
| STEP 5A | Production Data Governance Decision Sheet | 🟢 READY structurally, pending approvals |
| STEP 5B | Production Security, Operations & Release Authorization | 🔴 NOT AUTHORIZED |

### 3.2 Lifecycle Board

| Stage | สถานะ |
|---|---|
| Evidence Checklist | 🟢 Approved / Ready for Canonicalization |
| Role Assignment Matrix | 🟢 Approved |
| Role Assignment Memo | 🟢 Approved Draft |
| Role Acceptance Form | 🟡 Pending |
| Gate Review | ⏳ Not Started |
| Final Authorization | 🔴 Not Authorized |
| Production Code | 🔴 Not Authorized |

### 3.3 ข้อเท็จจริงเชิงเทคนิค

`docs/MVP-V1-WORKING-SET.md` ระบุชัดว่า repository ปัจจุบันเป็น **Product / Website Concept repository ไม่ใช่ verified application runtime**

→ ดังนั้น work planต้องเริ่มด้วย **Reconcile** ก่อนเขียนโค้ด และ **ห้ามอ้างว่ามี production application ที่ทำงานได้** จนกว่าจะ verify scaffold, runtime, tests, persistence และ customer journey จริง

---

## 4. ขอบเขตงาน (Scope)

### 4.1 In Scope — MVP V1

| # | รายการ | หมายเหตุ |
|---|---|---|
| 1 | Public Dev8StudioSite landing experience | Home + เส้นทางเข้าใช้งาน |
| 2 | Product Showcase | แสดงเฉพาะ lifecycle ที่เป็นจริง |
| 3 | Product Playground shell / supported demo scenarios | พร้อม scenario + role/view |
| 4 | Requirement Wizard | Conversation First, Form Second |
| 5 | Contextual Requirement Capture | จับ Requirement ณ จุดที่ค้นพบ |
| 6 | Requirement Set | รวม capture จาก journey เดียว |
| 7 | Context-aware role/view switching | ภายใน scenario ที่รองรับ |
| 8 | Submit-as-captured | ต้องไม่ promote state ขึ้นเอง |
| 9 | Continue-with-Wizard | เส้นทางกลับเข้า Wizard |
| 10 | BRM-compatible record model | ไม่ใช่ full BRM |
| 11 | Source Journey + Selected Context integrity | ข้อกำหนดแข็ง |
| 12 | Basic review / receipt state | opaque receipt |
| 13 | Git-controlled product / content configuration | ไม่มี CMS ใน V1 |

### 4.2 Out of Scope — MVP V1 (ชัดเจน)

Full BRM Studio · Full Project Room · Multi-Agent orchestration · Graphic Coding · Developer Workbench · AI processing of user problem descriptions · Authentication · Admin Portal · CRM Sync · Billing · File Uploads · Production GitHub project automation · Marketing Automation · Live Demo · หน้า About (ไม่อยู่ใน V1 ตาม Governance ปัจจุบัน)

> การนำรายการเหล่านี้กลับเข้า V1 ต้องผ่านการตัดสินใจและ Review ที่เหมาะสม — ไม่ใช่ทางเลือกของ Agent

### 4.3 Scope Boundary — สิ่งที่แผนนี้ "ห้าม" ทำ

| ข้อห้าม | เหตุผล |
|---|---|
| เริ่มเขียน application code ก่อน Gate 0 Reconcile | ยังไม่ยืนยัน repo/Governance |
| ประกาศ Canonical ให้เอกสารใดเอง | Canonical เป็น Governance decision |
| สร้างข้อมูลปลอมเพื่อให้เว็บดูน่าเชื่อถือ | Truthfulness Principle |
| แสดง Live Demo โดยไม่มีการ implement จริง | Demo Availability ต้องแยกจาก Lifecycle |
| ให้ AI สรุปแทนคำพูดลูกค้าในบันทึกต้นทาง | ต้องรักษา original customer words |
| ใช้ Sequential / Guessable receipt | ความปลอดภัยของ Confirmation |
| ข้ามจาก technical preparation ไป Production | `Preparation ≠ Authorization` |

### 4.4 Post-MVP Seeds — ยังไม่ใช่ Scope

S1 Context/Idea + Structured Layer · S2 Super Brain + Best Friend · S3 Project Room · S4 Project Lifecycle + GitHub Orchestration · S5 Developer Workbench · S6 Multi-Agent Orchestration · S7 Graphic Coding · S8 Advanced Traceability / Impact Analysis · S9 External Tool Ecosystem

**เกณฑ์จัดลำดับ Seed (ห้ามจัดลำดับจากความตื่นเต้น):** Customer Need → Evidence → Business Value → Architecture Readiness → Dependency on MVP → Operational/Security Cost → Replaceability/Integration Risk

---

## 5. Contract และสถาปัตยกรรมที่ต้องยึด

### 5.1 Technical Direction (LOCKED / READY)

Next.js App Router · TypeScript strict · Vercel · Static / Server-first + Progressive Enhancement · Single Git Repository · Git-controlled content · Server-side handling สำหรับ Sensitive Data · Next.js Route Handler สำหรับ Submission Backend · Managed Relational Database (Supabase Managed PostgreSQL, Singapore = proposed, ขึ้นกับ approval state) · PostgreSQL เป็น System of Record · Browser→Production DB = prohibited · No CMS / Auth / Billing / Live Demo ใน V1

### 5.2 Contextual Capture Contract (ฟิลด์บังคับ)

```
capture_id · product_id · playground_session_id · source_journey · selected_context
actor / view · action · UI location / element · customer_statement · timestamp
requirement_state · requirement_set_id
```

### 5.3 Requirement State Model

```
Captured → Understood → Clarified → Confirmed
```

มีเพียง **Confirmed** เท่านั้นที่ถือเป็น Final Requirement สำหรับ downstream · Submit-as-captured คงสถานะ **Captured**

### 5.4 Persistence Records ขั้นต่ำ

`PlaygroundSession` · `ContextSnapshot` · `RequirementCapture` · `RequirementSet` · `SubmissionReceipt`

### 5.5 Module Boundaries (แนวทาง — ปรับตาม repo จริงได้)

```
src/
  app/        (marketing) · playground · requirement
  components/ site · playground · requirement
  domain/     context · requirement · playground
  lib/        validation · persistence
```

### 5.6 Playground Adapter Contract

```
Product → identity · lifecycle · scenarios · roles/views · contextual capture points
```

---

## 6. Work Plan

### Stage 0 — Governance Completion (ต้องมีคนจริง ไม่ใช่ Agent)

```
Role Assignment → Role Acceptance → Gate Review → Final Authorization
```

| งาน | ผู้รับผิดชอบ | ผลลัพธ์ |
|---|---|---|
| Assign คนจริงตาม Role Assignment Matrix | Business/Owner level | Role Assignment Record |
| ยอมรับหน้าที่เป็นรายบุคคล | แต่ละ Role | Role Acceptance Form |
| Gate Review ตาม 16 gates ของ STEP 5B | Release Owner | Gate Review Record |
| Final Authorization | Release Owner | Authorization Record |

**Blocked จนถึง:** Role Acceptance Form = 🟡 Pending → ต้องปิดก่อน

> Role Acceptance ≠ Gate Approval ≠ Production Authorization

### Stage 1 — Gate 0: Reconcile

ตรวจสอบ **ก่อน** เพิ่ม application code:

- current repository structure
- current Governance + production authorization
- existing site implementation
- existing demo assets
- existing database capability

**ทำไมต้องมี:** Working Set ระบุว่า repo นี้เป็น concept repository ไม่ใช่ application runtime
**Gate ผ่านเมื่อ:** ไม่มีอะไรถูกสร้างจาก assumption

### Stage 2 — Phase 1: Foundation

Product model · Playground session · Context Snapshot · Requirement Capture · Requirement Set · state model · validation · source journey integrity
**Gate:** data + transitions ทดสอบได้โดยไม่ต้องมี UI

### Stage 3 — Phase 2: Requirement Wizard

entry · conversation/form capture · review · clarification · confirmation · Requirement Set import
**Gate:** ผู้ใช้ผลิต structured submission จากภาษาธรรมดาได้

### Stage 4 — Phase 3: Playground

product showcase · scenario selection · role/view switching · real supported interaction · contextual Requirement action
**Gate:** capture เกิดที่จุดใช้งานจริงได้

### Stage 5 — Phase 4: Join the Journeys

```
Wizard ↕ Requirement Set ↕ Playground Capture
```
รองรับ Continue in Wizard และ Submit as Captured
**Gate:** ทั้งสองทางออก produce contract เดียวกัน

### Stage 6 — Phase 5: Evidence

**Gate:** Data → Business Logic → UI → Evidence สอดคล้องกันทั้งหมด (ผ่าน Gate A–E ด้านล่าง)

### 6.1 ลำดับตาม Dependency

```
Context → Requirement Capture → Requirement Set → Wizard → Playground
→ Contextual Capture → Join Wizard + Playground → Persistence → Evidence
```

เหตุผล: Context เป็น root ที่มั่นคง · Capture เป็นสัญญาระหว่าง Playground กับ BRM · Requirement Set รองรับการค้นพบหลายจุด · Wizard จัดโครงสร้าง · Playground สร้างจุดค้นพบจริง · Join พิสูจน์แนวคิด product · Persistence + Evidence พิสูจน์ว่าผลลัพธ์เป็นของจริง

### 6.2 Priority Mapping

| ลำดับ | กลุ่ม | รายการ |
|---|---|---|
| P0 | Launch foundation | Context model · Requirement Capture contract · Requirement Set · Playground session/Source Journey · Wizard contract · Product/Showcase contract |
| P1 | MVP experience | Home · Showcase · Playground · Contextual capture UI · Requirement Set review · Wizard continuation · Submit-as-captured · Receipt/review handoff |
| P2 | Evidence & hardening | Validation · persistence · state transition tests · context integrity tests · runtime verification · privacy/security checks · truthfulness checks |
| P3 | Post-MVP Seeds | S1–S9 |

### 6.3 Gate Strategy

| Gate | เงื่อนไข |
|---|---|
| **Gate A — Contract** | ห้ามเริ่มงาน UI จนกว่า data contract ชัดเจน |
| **Gate B — Business Logic** | พิสูจน์ capture · grouping · state transition · source journey preservation · selected context changes · direct submit · wizard continuation |
| **Gate C — UI** | UI สะท้อน state จริง |
| **Gate D — Runtime** | ใช้ application จริงและ demo flow ที่รองรับจริง |
| **Gate E — Evidence** | Git scope · tests · runtime · persistence · output · ไม่มี simulated evidence |

---

## 7. Acceptance Journey และ Definition of Done

### 7.1 Acceptance Journey (14 ขั้น — ต้องผ่านครบ)

1. เปิด Dev8StudioSite
2. เข้าใจคุณค่า
3. เปิด Showcase / Playground
4. เลือก product ที่รองรับ
5. เข้า scenario
6. กระทำการจริง
7. Capture Requirement ณ จุดนั้น
8. เปลี่ยน role/view
9. กระทำการอีกครั้ง
10. Capture อีก Requirement
11. Review Requirement Set
12. Continue with Wizard **หรือ** Submit as captured
13. ได้รับ confirmation / receipt
14. Dev8Studio ตรวจสอบ submission พร้อมบริบทได้

### 7.2 Launch Success — 8 คำถามที่ระบบต้องตอบได้

1. ลูกค้าขออะไร? 2. ขอที่ไหน? 3. กำลังทำอะไรอยู่? 4. ใช้ role/view ใด? 5. คำพูดเดิมคืออะไร? 6. อะไรถูก clarify? 7. อะไรคือสิ่งที่ยืนยันสุดท้าย? 8. Dev8Studio ทำงานต่อโดยไม่สูญเสียบริบทได้หรือไม่?

**ถ้าตอบไม่ได้ = vertical slice ยังไม่ถูกพิสูจน์**

### 7.3 Evidence Rule (ทุก increment)

- `git diff` มีเฉพาะไฟล์ที่ตั้งใจ
- tests ผ่านจาก repo จริง
- สังเกต runtime behavior จริง
- ตรวจ persisted record ที่เกี่ยวข้อง
- **ไม่ยอมรับ simulated success เป็นหลักฐาน**
- ไม่กล่าวอ้าง Production readiness โดยไม่มีการอนุญาต

### 7.4 Definition of Done (MVP V1)

เข้าได้ทั้ง Wizard และ Playground · Playground รองรับ contextual capture · multiple captures รวมเป็น Requirement Set · original context ถูกเก็บ · Wizard และ direct submit ใช้ contract เดียว · submission ตรวจสอบได้โดย Dev8Studio · ระบบไม่อ้างความสามารถที่ไม่มี · ผ่าน Evidence Gate

---

## 8. Roles

| Role | ขอบเขตความรับผิดชอบ |
|---|---|
| Technical Owner | architecture, build, infrastructure, technical evidence |
| Security Owner | security gate, secrets, access, security evidence |
| Privacy/Legal Owner | privacy policy, DPA, retention, consent |
| Data Owner | lifecycle, retention, deletion, data integrity |
| Business Owner | content truth, product lifecycle, business logic |
| QA/Accessibility Owner | QA และ accessibility verification |
| Release Owner | final gate chain และ release integrity |

**ผู้รับผิดชอบในแผนนี้:** งาน Stage 0 ต้องมี**คนจริงที่ถูก assign** — Agent ห้ามสมมติตัวตนหรืออำนาจอนุมัติ · ส่วน Stage 1+ Agent ทำได้ในขอบเขตที่ Governance อนุญาต (เตรียมงาน/implement ตาม approved scope)

---

## 9. Risks และ Open Questions

| # | ประเด็น | ประเภท | ผลกระทบถ้าไม่จัดการ |
|---|---|---|---|
| R1 | ยังไม่มี Role Assignment จริง | Blocker | Stage 0 ไม่ปิด → Production ค้างที่ 🔴 |
| R2 | Repo ยังไม่มี application scaffold | Blocker | Gate 0 ต้องมีผลก่อนเขียนโค้ด |
| R3 | Demo Availability vs Lifecycle อาจสื่อสารผิด | Content Truth | ผิด Truthfulness Principle |
| R4 | Database provider/region ยัง pending approval (STEP 5A) | Approval | Persistence ไม่สามารถ lock ได้ |
| R5 | Privacy Policy จริงยังไม่ยืนยัน | Legal | ห้ามขึ้น Production |
| R6 | AI processing ถูกกั้นด้วย Privacy | Boundary | ต้องมี approval แยกก่อนใช้ข้อมูลจริง |
| R7 | Scope บวมจาก S1–S9 | Scope Control | ต้องยึด MVP V1 ก่อน |

**Open Questions ที่ต้อง escalated (ไม่ใช่ให้ Agent ตัดสิน):**
1. Supabase Singapore ได้รับอนุมัติเป็น provider/region จริงหรือยัง
2. Retention period ที่อนุมัติคือเท่าไร
3. Privacy Policy ฉบับ Production คือฉบับใด
4. Source of Truth repository สำหรับ implementation คือ repo ใด
5. โครงสร้างเนื้อหา TH/EN จะจัดเก็บแบบใดใน Git

---

## 10. Hard Stops (สรุปสำหรับทีม)

ห้ามดำเนินการ Production หากเข้าเงื่อนไขต่อไปนี้

1. Production PII ปรากฏใน Preview
2. Browser เข้าถึง Production DB โดยตรง
3. Client ถือ privileged DB credential
4. Full Submission ใน logs
5. Full Submission ใน analytics
6. Full Submission ใน notification email
7. Receipt identifier ที่เดาได้หรือเรียงลำดับ
8. ใช้ Receipt เป็น authentication โดยไม่มี auth model
9. Placeholder Privacy Policy
10. Consent ที่ pre-selected
11. Consent evidence ที่ version ไม่ได้
12. Retention ที่ยังไม่อนุมัติ
13. Database/provider/region ที่ยังไม่ verify
14. Production reader ที่ไม่ชัดเจน
15. Backup/deletion control ที่ยังไม่ verify
16. ไม่มี Production Code Authorization

---

## 11. ขั้นตอนถัดไปทันที (Immediate Next Steps)

| ลำดับ | งาน | Blocker? |
|---|---|---|
| 1 | ยืนยันว่า implementation repository อยู่ที่ใด และจะใช้ repo นี้หรือ repo ใหม่ | ใช่ (Gate 0) |
| 2 | ปิด Role Acceptance Form → Gate Review → Final Authorization | ใช่ (Stage 0) |
| 3 | ตอบ Open Questions ข้อ 1–5 | บางส่วน |
| 4 | ทำ Gate 0 Reconcile ให้ได้ผลเป็นหลักฐาน | ใช่ |
| 5 | เริ่ม Phase 1 Foundation (data contract + tests ก่อน UI) | ไม่ (หลัง Gate 0) |
| 6 | เดินหน้า Phases 2–5 ตามลำดับ dependency | ไม่ |

> งานที่ยังทำได้ระหว่างรอ Authorization: เตรียมการ (preparation) เท่านั้น — **Preparation ≠ Authorization**

---

## 12. Follow-up ที่ไม่เกี่ยวกับ Production Scope

จาก `docs/experiments/BRM-AI-EXPERIMENT-ROUND-1-2026-09-22.md` มีงานวิจัยที่แยกจากงาน implement

- **Round 2 — Challenge Agent:** ทดสอบว่า AI สามารถท้าทายการตีความของ AI ได้หรือไม่ โดยยึด Human Statement เป็น source context
- ประเด็นที่ต้องทดสอบ: Fact? · Inference? · Unsupported? · Contradiction? · Missing Context? · What should be asked? · What must not be promoted?
- Candidate Principles ที่รอ Review: A) Capture everything. Commit only what we understand. · B) Unknown is Data, not a hole for AI to fill. · C) AI may infer, but BRM must remember what was inferred.

งานส่วนนี้ **ไม่ใช่ Production Scope** และไม่ปลดล็อก V1 exclusions ข้อ "AI processing of user problem descriptions"

---

## 13. Traceability — ที่มาของแต่ละหัวข้อในแผนนี้

| หัวข้อในแผน | เอกสารต้นทาง |
|---|---|
| Non-negotiables ข้อ 1–7 | `README.md` §18–20, `AGENT-HANDOFF.md` §5, `BRM-MVP-V1-IMPLEMENTATION.md` §4–6 |
| Non-negotiables ข้อ 8–14 | `AGENT-HANDOFF.md` §5, §7, `README.md` §17, §19, §30, §33 |
| สถานะ Governance / Lifecycle | `docs/governance/README.md`, `docs/README.md` |
| In Scope / Out of Scope | `BRM-MVP-V1-IMPLEMENTATION.md` §2, `README.md` §32 |
| Contract / State / Persistence | `BRM-MVP-V1-IMPLEMENTATION.md` §4–6, §10–11 |
| Two-layer boundary / Seed lifecycle | `BRM-2-LAYER-CONTEXT-STRUCTURE.md` |
| Contextual journey / Requirement Set | `BRM-CONTEXTUAL-REQUIREMENT-JOURNEY.md` |
| Phases 0–5 / Gates A–E / P0–P3 | `BRM-MVP-V1-IMPLEMENTATION.md` §13, `DEV8STUDIO-SITE-MVP-V1-PLAN.md` |
| Acceptance Journey / DoD / Evidence | `BRM-MVP-V1-IMPLEMENTATION.md` §14–17 |
| Roles / Gate Model / Hard Stops | `AGENT-HANDOFF.md` §8–10 |
| Research follow-up | `BRM-AI-EXPERIMENT-ROUND-1-2026-09-22.md` |

---

**หลักการที่แผนนี้ยึด:**

> Build Small — Design for Extension.
>
> Design for the future, Build for the present.
>
> Capture everything. Commit only what we understand.
>
> Build the Core, Integrate the Ecosystem — Reliably.
>
> Never Outsource the Source of Truth.

> **Preparation ≠ Authorization**
>
> **Technical Pass ≠ Production Authorization**
