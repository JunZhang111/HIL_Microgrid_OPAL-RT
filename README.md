## The Hardware-in-the-loop Testbed for Microgrid based on Opal-rt
**Author:** Jun Zhang  
**Update:** 02/23/2025 first upload 

---

## System Description
See [system description](https://junzhang111.github.io/HIL_Microgrid_OPAL-RT/) for an overview.

---
### Softwares version
- Matlab: 2020b
- RTLAB: 2023.1.0.533
- CCS: V12.7.1.00001 with compiler TI v22.6.1.LTS
---

### Required Hardware
- OPAL-RT simulator: OP5707XG
- DSP controller: four OP8666
- Others: host PC, four PC to control DSP for black start and grid synchronization
---

## Folder OPAL-RT
- **eHStest.slx**: The model for RT-LAB with OP5707XG.
- **VC707_2-EX-0001-3_5_0_817-eHSx128m_Gen4_C0D8FBCEC0D8FBCE-4F-31.conf**: the channel mapping file for OP5707XG. See the Mapping Table in block 'BIAS' of SC_Monitor for channel assignment. Note that two special DB37 cables are required. Each cable splits 32 analog channels into two 16 channels for four OP8666s.
- **Two_Level_Inverter_params.m**: The file for system initialization.
- **Circuit_4DG_LC.slx.xlsx**: The file for scenarios such as load changes.

---

## Folder DSP
- **Droop.map and Droop.out**: the compiled code for DSP CPU1 with primary control, secondary control, grid synchronization, and counterclockwise communication. 
- **VfController_zj_cpu3.map and VfController_zj_cpu3.out**: the compiled code for DSP CPU2 with clockwise communication. 
---
## Real-time Simulation Steps (Opal-rt side)
- **Please refer to the [RT-LAB tutorial video](https://www.opal-rt.com/opal_tutorial/startup-rtlab/) on Opal-rt website**. 
---
## Real-time Simulation Steps (DSP side)
- **Code Flashing**: See [page for OP8666 on Opal-rt wiki](https://opal-rt.atlassian.net/wiki/spaces/PHDGD/pages/144718233/OP8666+DSP+Controller+Board).
- **Black Start**: Start the inverter #1 without grid synchronization.
- **Grid Synchronization**: Start inverters #2, #3, and #4 with grid synchronization(plug in).
- **Activate Secondary Control**: Activate secondary control on all the inverters.

