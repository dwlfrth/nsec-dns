This should allow CTF participants to resolve NSEC infra domain names (nsec. and ctf.) All other DNS queries would be sent to CloudFlare DNS Servers (1.1.1.1 and 1.0.0.1)

# Setting up the container
1. `chmod +x nsec-dns/entrypoint.sh`
2. Copy both the `team-XXX.ovpn` and `ca.crt` files under the nsec-dns subdirectory
3. Rename the `team-XXX.ovpn` file to `vpn.ovpn`

# Running the container
`docker compose up --build -d`

# Working with the container
- Make sure to point your host DNS to 127.0.0.1
- You will need to have a second instance of the VPN connection in Tunnelblick running on the host for routing purposes
- In Tunnelblick configuration, set the "Set DNS/WINS" to "Do not set nameserver"
