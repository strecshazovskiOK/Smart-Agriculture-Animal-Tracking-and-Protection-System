# Smart Agriculture Animal Tracking and Protection System

## Project Overview
The **Smart Agriculture Animal Tracking and Protection System** is a simulation-based IoT solution developed to improve the safety and monitoring of open-field cattle farming. By modeling GPS tracking, sensor-triggered threat detection, and wireless LoRa communication in OMNeT++ with FLoRa, the system simulates how livestock can be safeguarded from predators. The solution focuses on reducing livestock losses, improving automation in threat response, and supporting smarter decision-making through simulation outputs.

## Project Members
- **Ömercan Kahveci** – 2453298  
- **Dorukhan Doğan** – 2453165  

## Objectives
- **Real-Time Monitoring**  
  Simulate GPS-based cattle movement and boundary control.

- **Threat Detection & Response**  
  Model predator proximity using stochastic processes (Poisson distribution) and implement alert mechanisms for nearby threats.

- **Automated Alerts**  
  Trigger broadcast alerts through LoRa network nodes when threats are detected, with OMNeT++ visual confirmation.

## Technologies and Tools

| Technology/Tool            | Purpose                                               |
|----------------------------|-------------------------------------------------------|
| **C**                      | Prototype for movement logic and threat evaluation    |
| **OMNeT++**                | Core network simulation platform                      |
| **FLoRa**                  | LoRaWAN simulation extension for OMNeT++              |
| **LoRaWAN**                | Long-range wireless communication model               |
| **Poisson Distribution**   | Modeling random predator spawn events                 |
| **Exponential Distribution** | Used for sensor intervals and mobility pauses     |

## Current Progress
- Developed and tested a **C-based logic prototype** to simulate cattle and predator behavior.
- Transitioned to OMNeT++ with **FLoRa** to simulate real-world wireless communication.
- Implemented detection logic based on Euclidean distance (80 meters).
- Simulated randomized predator appearances and cattle movement.
- Modeled alert broadcasting through an autonomous alert transmitter node.
- Validated packet transmissions and behavior using visual outputs in OMNeT++.

## Sample Output Logic
- One cattle node and two predator nodes are simulated.
- The predator within 80 meters triggers an alert and a deterrent mechanism.
- The second predator, appearing at 300 meters, is ignored.
- Alerts are broadcasted through LoRa using an alert transmitter component.

## Assumptions
- Simulations assume clear weather and reliable GPS/sensor inputs.
- An 80-meter detection range balances realism and communication effectiveness.
- Predators follow typical stochastic hunting behavior.
- LoRa communication range is sufficient for the simulation area.

## Expected Impact
- Demonstrates how system simulations can be used to validate smart agriculture designs.
- Offers insights into detection efficiency, system response, and communication behavior without requiring hardware deployment.
- Provides a framework for future enhancements like reactive cattle logic, energy-aware transmission, and physical hardware prototyping.

## Repository Structure

📁 Smart-Agriculture-Animal-Tracking-and-Protection-System/
├── README.md
├── code/
│ └── main.c
├── doc/
│ ├── proposal.pdf
│ ├── progress.pdf
│ └── term_Project_Final_Report_2453298_2453165.pdf
│ ├── *.ned, *.ini files
## Run 
-Please adjust your simulation with the following structure. 
<img width="321" alt="Screenshot 2025-06-10 at 01 56 58" src="https://github.com/user-attachments/assets/66ef0146-99d4-4d42-8927-2fe39bcd7073" />

## Documentation
You can view our final project report here:  
[`term_Project_Final_Report_2453298_2453165.pdf`](doc/term_Project_Final_Report_2453298_2453165.pdf)

The report was written using the [IEEE Conference Template](https://www.ieee.org/conferences/publishing/templates.html) and prepared collaboratively on [Overleaf](https://www.overleaf.com/org/ieee) for LaTeX-based document editing and formatting.

## Contact
- **Ömercan Kahveci** – omercan.kahveci@metu.edu.tr  
- **Dorukhan Doğan** – dorukhan.dogan@metu.edu.tr  

## References
- [FLoRa: Framework for LoRaWAN Simulation – Aalto University](https://flora.aalto.fi/)
- [The Things Network Documentation on LoRaWAN](https://www.thethingsnetwork.org/docs/lorawan/)
- Smith, J. K., et al. (2020). *Economic Impacts of Predator Attacks on Cattle Farms*. *Journal of Agricultural Economics*, 65(2), 485–500.
