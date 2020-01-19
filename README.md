# DDOS_DUT_POC
Distributed Denial Of Service: Device Under Test Proof Of Concept (DDOS DUT POC)

# Introduction

- In this project we needed to deploy a lab environment in order to test DDOS DUTs.
- Standards were needed to be adjusted for all DUTs testing, where all DUTs were to be tested on common grounds.
- A near real life scenarios needed to be tested and calibrated with given DUTs.

## The main requirements
1- Deploy a victim system, with almost all well known services configured and deployed.

2- Deploy An Attacker System capable of Utilizing and deploying several Layer-4 & 7 DDOS Attacks.

3- Deploy a Client System, where it well generate and request Legitimate traffic in correspondence with the Victim.

4- Deploy a Calibration System, in order to act as a dependable performance measurement through out all the phases of the POC.

-----

# The Victim

- The Victim is the System which is going to be under Attack by the Attacker (The Swarm) and under protection by the DDOS DUT.

## System Specifications

- The Victim Server held the following Specs:

OS: Debian 8.1 (Jessie)

CPU: 4xCore

RAM: 4GB

Swap: 8GB

Disk: 500GB

## Preparing The Server

1- First Comes the network configuration, which includes Mang. Iface and the Data Traffic Iface

2- Add Routes in order to respond to the victim Legitimate Traffic, and the Swarm Layer-7 Attacks.
