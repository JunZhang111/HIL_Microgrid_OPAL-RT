## The Hardware-in-the-loop Testbed for Microgrid based on OPAL-RT
**Author:** Jun Zhang  
**Update:** 02/23/2025 first upload 

---

## System Description
**See [HILSystem.pdf](https://github.com/JunZhang111/HIL_Microgrid_OPAL-RT/blob/main/HILSystem.pdf) for more details.**
- A HIL testbed for microgrid based on OPAL-RT.  
![System Overview](Slide24.JPG)
---

## Simulator
![Simulator](Slide25.JPG)
---

## Controls
- Primary Control: Droop control in [1].
- Secondary Control: Optimal distributed control in [2].
- [1] N. Pogaku, M. Prodanovic and T. C. Green, "Modeling, Analysis and Testing of Autonomous Operation of an Inverter-Based Microgrid," in IEEE Trans. Power Electron, vol. 22, no. 2, pp. 613-625, Mar. 2007.
- [2] S. M. Mohiuddin and J. Qi, "Optimal Distributed Control of AC Microgrids With Coordinated Voltage Regulation and Reactive Power Sharing," in IEEE Trans. Smart Grid, vol. 13, no. 3, pp. 1789-1800, May 2022.
![Control](Slide26.JPG)
---

## Software Version
- Matlab: 2020b
- RTLAB: 2023.1.0.533
- CCS: V12.7.1.00001 with compiler TI v22.6.1.LTS
---

## Required Hardware
- OPAL-RT simulator: OP5707XG
- DSP controller: four OP8666
- Others: host PC, four PC to control DSP for black start and grid synchronization
---