package flora.simulations;
import flora.simulations.CattleNode;
import flora.simulations.PredatorNode;
import inet.applications.udpapp.UdpBasicApp;
import inet.node.inet.Router;
import inet.node.internetcloud.InternetCloud;
import flora.LoRaPhy.LoRaMedium;
import flora.LoraNode.LoRaNode;
import flora.LoraNode.LoRaGW;
import inet.node.inet.StandardHost;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth1G;

@license(LGPL);
network LoRaNetworkTestOmer
{
    parameters:
        int numberOfNodes = default(0);
        int numberOfGateways = default(1);
        int numberOfCattle = default(5);
        int numberOfPredators = default(1);
        int numberOfAlertTransmitters = default(1);  // NEW: Alert transmitters
        int numberOfEmergencyNodes = default(0);     // NEW: Optional emergency nodes
        int networkSizeX = default(1000);
        int networkSizeY = default(1000);
        @display("bgb=1200,800");
        
    submodules:
        // Optional generic nodes
        loRaNodes[numberOfNodes]: LoRaNode {
            @display("p=400,400");
        }
        
        // Cattle (LoRa + alarm app)
        cattle[numberOfCattle]: CattleNode {
            @display("p=700,500");
        }
        
        // Predators (no LoRa)
        predators[numberOfPredators]: PredatorNode {
            @display("p=500,500");
        }
        
        // NEW: Alert Transmitters (LoRa nodes for broadcasting alerts)
        alertTransmitter[numberOfAlertTransmitters]: LoRaNode {
            @display("p=500,300;i=device/antennatower");
        }
        
        // NEW: Optional Emergency Nodes (for extended coverage)
        emergencyNode[numberOfEmergencyNodes]: LoRaNode {
            @display("p=150,150;i=device/router");
        }
        
        // Gateways
        loRaGW[numberOfGateways]: LoRaGW {
            @display("p=300,300;is=s");
        }
        
        // LoRa wireless medium
        LoRaMedium: LoRaMedium {
            @display("p=500,150");
        }
        
        // Network server
        networkServer: StandardHost {
            parameters:
                @display("p=100,100");
        }
        
        // Internet cloud
        internetCloud: InternetCloud {
            @display("p=300,100");
        }
        
        // Routers
        nsRouter: Router {
            @display("p=200,100");
        }
        
        gwRouter[numberOfGateways]: Router {
            @display("p=300,200");
        }
        
        // IPv4 config
        configurator: Ipv4NetworkConfigurator {
            parameters:
                assignDisjunctSubnetAddresses = false;
                @display("p=600,50");
        }
        
    connections allowunconnected:
        // Network server connection
        networkServer.ethg++ <--> Eth1G <--> nsRouter.ethg++;
        nsRouter.pppg++ <--> Eth1G <--> internetCloud.pppg++;
        
        // Gateway connections
        for i = 0..numberOfGateways-1 {
            internetCloud.pppg++ <--> Eth1G <--> gwRouter[i].pppg++;
            gwRouter[i].ethg++ <--> Eth1G <--> loRaGW[i].ethg++;
        }
}