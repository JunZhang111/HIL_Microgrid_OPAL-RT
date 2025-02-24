# HIL System Overview

## The Hardware-in-the-loop Testbed for Microgrid
**Author:** Jun Zhang  
**Affiliation:** Graduate Research Assistant, Electrical Engineering & Computer Science  
**Location:** Daktronics Engineering Hall 314  

---

## Why HIL?
HIL Simulation validates a control system's design by running the control on its actual hardware.

---

## Testbed Structure
- **Simulator**: Models the inverters, measurements, and the power grid in real time.
- **OP8666**: DSP controller.
- **Monitor and Oscilloscope**: Data monitoring.

---

## Control Structure
- **Primary Control**
- **Secondary Control**
- **Clockwise & Counterclockwise Communication**

---

## Communication & Core Assignment
- **Bidirectional Communication**: Two sets of transmitters and receivers.
- **Time Step**: 0.025s.
- **Core1**: Primary & secondary control, clockwise communication.
- **Core2**: Counterclockwise communication.
- **Core Communication**: Uses global RAM.

---

## Simulation Results
### System Under Droop Mode
1. Switch to optimal control.
2. Restore frequency to **60 Hz**.
3. Achieve admissible voltage profile.

### Shift to the Proposed Control
1. Better reactive power sharing.
2. Perfect active power sharing.

---

## Q&A
**Thanks for your listening!**
