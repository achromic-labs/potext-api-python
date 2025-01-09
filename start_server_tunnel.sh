#!/bin/bash

# Start the Python server in the background
python server.py &

# Wait a few seconds to ensure the server is up
sleep 3

# Start the cloudflared tunnel
echo "======================================================"
echo "======================================================"
echo "======================================================"
echo "============= Starting Cloudflare Tunnel ============="
echo "=============== Find your API URL below =============="
echo "======================================================"
echo "======================================================"
echo "======================================================"
cloudflared tunnel --url http://localhost:8080
echo "======================================================"
echo "======================================================"
echo "======================================================"
echo "=============== Find your API URL above =============="
echo "======================================================"
echo "======================================================"
echo "======================================================"
