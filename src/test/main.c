#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

// Uniform random number between min and max
double uniform(double min, double max) {
    return min + ((double)rand() / RAND_MAX) * (max - min);
}

// Simulate cattle movement inside fenced field
void simulateCattleMovement(double *x, double *y) {
    double maxX = 500.0;// in meter
    double maxY = 300.0;

    *x = uniform(0, maxX);
    *y = uniform(0, maxY);
}

// Simulate predator appearance using Poisson distribution
int simulatePoisson(double lambda) {
    int k = 0;
    double p = 1.0;
    double L = exp(-lambda);

    do {
        k++;
        p *= uniform(0.0, 1.0);
    } while (p > L);

    return k - 1;
}

// Simulate predator random position and check proximity
int isPredatorDetected(double cowX, double cowY, double detectionRadius) {
    double predatorX = uniform(0, 500);
    double predatorY = uniform(0, 300);

    double distance = sqrt(pow(predatorX - cowX, 2) + pow(predatorY - cowY, 2));

    printf("Predator appeared at: (%.2f, %.2f)\n", predatorX, predatorY);
    printf("Distance to cattle: %.2f meters\n", distance);

    return distance <= detectionRadius;
}

int main() {
    srand(time(NULL));

    double cowX, cowY;
    simulateCattleMovement(&cowX, &cowY);
    printf("Cattle moved to position: (%.2f, %.2f)\n", cowX, cowY);

    // Simulate predator encounter using Poisson model
    double lambda = 0.6; // average predator arrival rate
    int predators = simulatePoisson(lambda);
    printf("Number of predators encountered: %d\n", predators);

    // Detection radius ( camera/sensor range on the strap) it will be done using mobility positions in omnet++
    double detectionRadius = 80.0; // meters

    for (int i = 0; i < predators; i++) {
        printf("\n Checking predator #%d proximity...\n", i + 1);
        if (isPredatorDetected(cowX, cowY, detectionRadius)) {
            printf("!!! Predator detected !!! Sending alert...\n");
            printf(" Sound & light deterrent activated on cattle strap.\n");
        } else {
            printf("Relax Predator too far. No action needed.\n");
        }
    }

    return 0;
}
