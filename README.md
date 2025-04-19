# Robotic Pen‑Lifting Mechanism

A modular, servo‑driven pen‑lifting module with a central support bracket, designed for CNC‑style drawing robots, whiteboard plotters, or calligraphy machines. This repository contains CAD models, dimension sheets, and documentation for each major component and its iterative design process.

![writing robot](./media/writing%20robot.jpg)

Video of writing ["不忘初心"](./media/不忘初心.mp4) and ["你干嘛哎呦"](./media/你干嘛哎呦.mp4)
---

## Table of Contents

- [Robotic Pen‑Lifting Mechanism](#robotic-penlifting-mechanism)
      - [Video of writing "不忘初心" and "你干嘛哎呦"](#video-of-writing-不忘初心-and-你干嘛哎呦)
  - [Table of Contents](#table-of-contents)
  - [Project Overview](#project-overview)
  - [Key Features](#key-features)
  - [Mechanical Design](#mechanical-design)
    - [Central Support Bracket](#central-support-bracket)
    - [Pen‑Lifting Mechanism \& Servo Bracket](#penlifting-mechanism--servo-bracket)
  - [Integration \& Assembly](#integration--assembly)
  - [Bill of Materials](#bill-of-materials)
  - [CAD \& Drawings](#cad--drawings)
  - [Future Improvements](#future-improvements)
  - [License](#license)

---

## Project Overview

This project implements a **pen‑lifting subsystem** that can be mounted on a 2‑axis gantry or delta robot. It consists of:

- A **central support bracket** that holds the lifting assembly above the work surface.
- A **servo‑driven pen‑lift** that raises and lowers the drawing tool with sub‑millimeter precision.
- Modular interfaces for smooth rods and mounting plates, allowing quick integration into larger plotting systems.

---

## Key Features

- **Stable Central Support**  
  High‑rigidity bracket minimizes wobble during fast movements.  
- **Precision Pen Lift**  
  Servo‑cam mechanism provides repeatable up/down strokes.  
- **Modular Interfaces**  
  Standard M3‑hole pattern for linear guides, servos, and carriage plates.  
- **Iterative‑Driven Design**  
  Multiple CAD versions refined for weight, stiffness, and ease of assembly.

---

## Mechanical Design

### Central Support Bracket

1. **Principle**  
   - Acts as the backbone for the pen‑lifting module.  
   - Transfers loads from the carriage to the linear guide rails.  
2. **Dimension Design**  
   - Inner width: 40 mm to clearance standard guide blocks.  
   - Plate thickness: 5 mm aluminum for stiffness.  
   - Servo‑arm clearance zone: 25 mm × 15 mm cut‑out.  
3. **Iteration Process**  
   - **v1.0**: Solid plate—too heavy, resonance at 20 Hz.  
   - **v1.1**: Lightening pockets added—reduced mass by 30%.  
   - **v2.0**: Reinforced rib under servo mount—eliminated flex under 1 kg load.

### Pen‑Lifting Mechanism & Servo Bracket

1. **Lifting Principle**  
   - A high‑torque micro‑servo drives a cam‑follower arm.  
   - Cam profile converts 60° of servo travel into 10 mm vertical stroke.  
2. **Servo Bracket & Pen‑Lift Dimensions**  
   - Servo mount hole spacing: 32 mm × 16 mm (MG90S‑compatible).  
   - Cam arm length: 45 mm from pivot to pen holder.  
   - Guide rod interface: 8 mm bore with PTFE sleeve.  
3. **Component Mating**  
   - **Rod ↔ Pen‑lift arm**: 2 mm set‑screw clamps.  
   - **Pen‑lift arm ↔ Servo bracket**: 3 mm shoulder bolt pivot.  
   - **Rod ↔ Servo bracket**: Linear bushing ensures vertical alignment.  
4. **Iteration Processes**  
   - **Servo Bracket v1.0**: Over‑constrained, binding at extremes.  
   - **Servo Bracket v1.1**: Added +/-0.5 mm clearance pockets.  
   - **Pen‑lift Arm v1.0**: Cam profile too aggressive—jerky motion.  
   - **Pen‑lift Arm v1.1**: Smoothed cam radius; reduced stroke acceleration.

---

## Integration & Assembly

1. **Linear Rail Mounting**  
   - Slide central support onto two parallel 12 mm rails.  
   - Secure with four M3 × 10 mm cap screws.  
2. **Servo & Arm Installation**  
   - Attach servo to bracket using M2.5 hardware.  
   - Fit cam‑arm pivot, align pen holder vertically.  
3. **Pen Holder & Rod**  
   - Slide PTFE sleeve into bracket bore.  
   - Insert 8 mm hardened steel rod; fix pen holder to arm end.  
4. **Cable Routing**  
   - Use zip‑ties along bracket ribs.  
   - Ensure servo cable has >30 mm slack at extremes.

---

## Bill of Materials

| Item                              | Qty  | Notes                              |
|-----------------------------------|------|------------------------------------|
| 5 mm Aluminum Plate (central bracket) | 1    | 100 × 60 mm, 6061‑T6               |
| MG90S Micro‑Servo                  | 1    | 180° travel, 2.2 kg·cm torque       |
| 8 mm Hardened Steel Rod            | 1    | Cut to 80 mm length                |
| Linear Bushing (8 mm ID)           | 2    | PTFE‑lined for smooth lift         |
| M3 × 10 mm Cap Screws & T‑nuts      | 4    | Rail mounting                     |
| M2.5 × 8 mm Screws & Nuts           | 2    | Servo mount                       |
| M3 × 6 mm Shoulder Bolt & Washer    | 1    | Cam pivot                         |
| PTFE Sleeve (8 mm ID)               | 1    | Bore liner                        |
| Zip‑ties & Cable Clips              | –    | For cable management              |

---

## CAD & Drawings

- **写字机器人建模/**
  - `中心支架下_Default_sldprt.STEP` — 支撑支架
  - `舵机旋转叶片_默认_sldprt.STEP` — 舵机安装座

---

## Future Improvements

- **Closed‑Loop Control**: Add hall‑sensor feedback for precise pen height.  
- **Quick‑Swap Carriage**: Magnetic couplers for sub‑60 s assembly changes.  
- **Lightweight Composites**: Replace aluminum with carbon‑fiber for weight reduction.  
- **Dampers**: Integrate silicone bumpers to soften pen‑up/down impacts.

---

## License

This work is released under the [MIT License](LICENSE). Feel free to adapt and integrate into your own plotting or drawing systems.

