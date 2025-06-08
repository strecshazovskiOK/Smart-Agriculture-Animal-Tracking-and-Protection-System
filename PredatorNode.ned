//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package flora.simulations;

import inet.node.inet.StandardHost;
import inet.mobility.single.LinearMobility;

module PredatorNode extends StandardHost
{
    parameters:
        @display("i=block/wolf;o=red");
        hasStatus = false;                    // disables IPv4/IPv6 setup
        *.numUdpApps = 0;                     // no network apps
        *.mobility.typename = "LinearMobility";
        *.mobility.speed = default(2mps);     // you can override in ini
        *.mobility.acceleration = default(1mps2);
}
