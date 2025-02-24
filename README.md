## The Hardware-in-the-loop Testbed for Microgrid based on Opal-rt
**Author:** Jun Zhang  
**Update:** 02/23/2025 first upload 

---

## System Description
See [system description](https://junzhang111.github.io/HIL_Microgrid_OPAL-RT/) for an overview.

---

## Folder Simulink
- **slx**: The model for RT-LAB with OP5707XG.
- **ini**: The file for initialization.
- **Excel**: The file for load change.

---

## Folder DSP
- **.map and .out**: the files for DSP controller OP8666. 

---
## Real-time Simulation Steps (Opal-rt side)
- **Please refer to the [RT-LAB tutorial video](https://www.opal-rt.com/opal_tutorial/startup-rtlab/) on Opal-rt website**. 
---
## Real-time Simulation Steps (DSP side)
- **Code Flashing**: See [page for OP8666 on Opal-rt wiki](https://opal-rt.atlassian.net/wiki/spaces/PHDGD/pages/144718233/OP8666+DSP+Controller+Board).
- **Black Start**: Start the inverter #1 without grid synchronization.
- **Grid Synchronization**: Start inverters #2, #3, and #4 with grid synchronization(plug in).
- **Activate Secondary Control**: Activate secondary control on all the inverters.

