## The Hardware-in-the-loop Testbed for Microgrid based on Opal-rt
**Author:** Jun Zhang  
**Update:** 02/23/2025 first upload 

---

## System Description
See [system description](https://junzhang111.github.io/HIL_Microgrid_OPAL-RT/) for an overview.

---

## Folder OPAL-RT
- **eHStest.slx**: The model for RT-LAB with OP5707XG.
- **VC707_2-EX-0001-3_5_0_817-eHSx128m_Gen4_C0D8FBCEC0D8FBCE-4F-31.conf**: the channel mapping file for OP5707XG. Note that two special DB 37 cables are required for splitting 32 analog channels into two 16 channels.
- **Two_Level_Inverter_params.m**: The file for system initialization.
- **Circuit_4DG_LC.slx.xlsx**: The file for scenarios such as load changes.

---

## Folder DSP
- **Droop.map and Droop.out**: the compiled code for DSP controller OP8666 on CPU1 with both primary control and secondary control. 
- **VfController_zj_cpu3.map and VfController_zj_cpu3.out**: the compiled code for DSP controller OP8666 on CPU2 with clockwise communication. 
---
## Real-time Simulation Steps (Opal-rt side)
- **Please refer to the [RT-LAB tutorial video](https://www.opal-rt.com/opal_tutorial/startup-rtlab/) on Opal-rt website**. 
---
## Real-time Simulation Steps (DSP side)
- **Code Flashing**: See [page for OP8666 on Opal-rt wiki](https://opal-rt.atlassian.net/wiki/spaces/PHDGD/pages/144718233/OP8666+DSP+Controller+Board).
- **Black Start**: Start the inverter #1 without grid synchronization.
- **Grid Synchronization**: Start inverters #2, #3, and #4 with grid synchronization(plug in).
- **Activate Secondary Control**: Activate secondary control on all the inverters.

