# setup.sh
# Main setup script to call all the others in order
source config-scripts/base-setup.sh
source config-scripts/networking.sh
source config-scripts/firewall.sh
source config-scripts.nat.sh
source config-scripts.ssh.sh
