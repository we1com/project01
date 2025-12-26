#!/bin/bash
apt update -y                               # Update Ubuntu packages - by Ali Ahmed
apt install -y curl docker.io git           # Install curl, Docker, Git - by Ali Ahmed

# Install Node.js 18
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -  # Add NodeSource repo - by Ali Ahmed
apt install -y nodejs                                     # Install Node.js - by Ali Ahmed

# Enable and start Docker
systemctl start docker                     # Start Docker service - by Ali Ahmed
systemctl enable docker                    # Enable Docker on boot - by Ali Ahmed
usermod -aG docker ubuntu                  # Add ubuntu user to docker group - by Ali Ahmed