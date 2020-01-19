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

### Installing services
- Now I started building and configuring the Services that is going to be under stress.

- Of course all services needs to fully configured and Legitimate, so it can generate Legitimate traffic with the Client System.

Apache
- Apache Web Server is Used for HTTP & HTTPS Traffic

bind9
- Bind is going to be utilized for DNS Service on the Victim system.

postfix
- Postfix Is Used for the SMTP type of traffic.

vsftpd
- vsftpd was going to be used for FTP service & Traffic generation

SNMP
- SNMP was needed for server monitoring and for another open port opurtunity.

ntp
- ntp was also utilized for nodes sync.

# The Swarm

- The Swarm is the System responsible for Deploying a wide range of DOS Attacks in order to test the DUT and Bleed the Victim.

## System Specifications
- The Swarm Server held the following Specs:

OS: Kali 1.1 (Moto)

CPU: 4xCore

RAM: 8GB

Swap: 8GB

Disk: 500GB

## Preparing The Server
1- First Comes the network configuration, which includes Mang. Iface and the Data Traffic Iface.

2- Then a twenty different sub interfaces are created in order to source the attacks from.

## Preparing Attack Tools
- The following Tools I used for Attacks:

Layer4

1- hping

2- hydra

Layer7

3- slowloris

4- slowhttptest

# The Client

- The Client is the System which is going to Generate & Request Legitimate traffic back & Forth in correspondence with the victim.

## System Specifications
- The Client Server held the following Specs:

OS: Debian 8.1 (Jessie)

CPU: 4xCore

RAM: 4GB

Swap: 8GB

Disk: 500GB

## Preparing The Server
1- First Comes the network configuration, which includes Mang. Iface and the Data Traffic Iface

2- I have Created 250 Different Loopback Ifaces in order to simulate legitimate traffic from 250 different sources.

## Legitimate Traffic Generation
- In order to Generate Simultaneous Legitimate Services with Fluctuating bandwidth, the following has been created and used.

# Calibration Setup

- In order to Calibrate the performance & response times of the victim, Calibration tools has been built on the Client.

- The Calibration uses 10 Different Clients in Data collection each sourced from unique IP.

# Data Points Collectors
- Create the Collectors which will retrieve the Data Points Values
