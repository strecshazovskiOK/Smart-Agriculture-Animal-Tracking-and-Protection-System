Smart Agriculture Animal Tracking and Protection System
Project Overview
The Smart Agriculture Animal Tracking and Protection System is an IoT-based solution designed to introduce enhanced safety and monitoring to open-field cattle farming. It integrates GPS tracking, environmental sensors, and live camera monitoring into wearable cattle straps to detect and deter possible threats, such as predators, before any harm is caused. The system operates to reduce livestock losses, simplify farm management, and enhance animal welfare through proactive protection and automatic notifications.

Project Members
Ömercan Kahveci – 2453298
Dorukhan Doğan - 2453165

Objectives
Real-Time Monitoring
Track cattle positions with GPS to hold animals within security boundaries.

Threat Detection & Deterrence
Detect oncoming predators through motion sensors and camera processing and release non-lethal deterrents like flashing lights or alarm beeps.

Automated Alerts
Provide real-time alert to ranchers or farmers upon threat detection for quick action and tracking record.

| Technology/Tool          | Purpose                                               |
| ------------------------ | ----------------------------------------------------- |
| **C**                    | Simulation prototype for predator detection           |
| **OMNeT++ (planned)**    | Network simulation platform                           |
| **FLoRa (planned)**      | LoRaWAN simulation framework in OMNeT++               |
| **LoRaWAN (planned)**    | Long-range, low-power wireless communication protocol |
| **Monte Carlo**          | Random simulation of environmental factors            |
| **Poisson Distribution** | Modeling random predator appearance patterns          |

Current Progress
To date, the following milestones have been achieved:

A C-based simulation prototype has been established.

The simulation correctly generates random cattle positions and predator sightings.

Predator proximity is evaluated using a detection radius (set to 80 meters).

Nearby predators issue warnings and deterrent responses, while distant ones are neglected.

Output has been verified to correspond to expected behavior based on spatial distance.

Subsequent work using OMNeT++ with FLoRa is expected to model real-world communication behaviors and energy use.


Sample Output Logic
One cow and two predators are generated in the simulation.

The closest predator appears within 80 meters and is identified as dangerous.

Deterrent responses (e.g., light, alarm) are activated for that predator.

The second predator appears 300 meters away and is not noticed by the system.

Assumptions
All sensor and GPS modules function well in normal weather conditions.

An 80-meter detection range is sufficient for detection of potential threats without alarms.

Predators are assumed to exhibit typical natural hunting patterns in simulations.

Communication systems (e.g., LoRa) are adequately in range and reliability.

Expected Impact
Reduction of livestock loss through timely detection and prevention of threats.

Increased security and peace of mind for farmers managing remote or large grazing areas.

Data-driven decision-making, enabling historic tracing of alarms and movement of livestock.


Repository Structure
📁 SmartAgri-AnimalTracking/
├── README.md
├── reports/
│   ├── proposal.pdf
│   └── progress.pdf
├── code/
│   └── main.c


Contact Information
For questions, feedback, or collaboration inquiries, please contact:

Ömercan Kahveci – omercan.kahveci@metu.edu.tr

Dorukhan Doğan – dorukhan.dogan@metu.edu.tr


References
FLoRa: Framework for LoRaWAN Simulation – Aalto University

The Things Network Documentation on LoRaWAN

Smith, J. K., et al. (2020). Economic Impacts of Predator Attacks on Cattle Farms. Journal of Agricultural Economics, 65(2), 485–500.
