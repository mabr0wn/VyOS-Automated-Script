# VyOS Configuration

This repository contains configuration scripts for setting up VyOS on a virtual or physical machine.

## Setup Instructions
1. Clone the repository.
2. SSH into your VyOS instance.
3. Run `source setup.sh` to apply the configuration scripts.

## Configuration Breakdown
- **Base Setup**: Sets up the system login and password.
- **Networking**: Configures IP addresses, static routes, and interfaces.
- **Firewall**: Blocks unwanted IP ranges from the DMZ.
- **NAT**: Configures outbound NAT for specific subnets.
- **SSH**: Enables SSH on port 22.

## Notes
- Modify IP addresses in `setup.sh` according to your network setup.
