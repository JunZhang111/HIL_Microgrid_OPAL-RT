## The Hardware-in-the-loop Testbed for Microgrid
**Author:** Jun Zhang  
**Affiliation:** Graduate Research Assistant, Electrical Engineering & Computer Science  
**Location:** Daktronics Engineering Hall 314  

---

## System Description
See [system description](https://junzhang111.github.io/HIL_Microgrid_OPAL-RT/) for an overview.

---

## Folder Simulink
- **slx**: The model for RT-LAB with OP5707XG.
- **ini**: The file for initialization.
- **Excel**: The file for load change.

---

## DSP
- **.map and .out**: the files for DSP controller OP8666.

---
## Real-time Simulation Steps (Opal-rt side)
- **Please refer to the video on Opal-rt website**. 
---
## Real-time Simulation Steps (DSP side)
- **Black Start**: Start the inverter #1 without grid synchronization.
- **Grid Synchronization**: Start inverters #2, #3, and #4 with grid synchronization(plug in).
- **Activate Secondary Control**: Activate secondary control on all the inverters.

