#!/bin/bash
# Add python-app.test.com to /etc/hosts

if grep -q "python-app.test.com" /etc/hosts; then
    echo "python-app.test.com already exists in /etc/hosts"
else
    echo "127.0.0.1 python-app.test.com" | sudo tee -a /etc/hosts
    echo "Added python-app.test.com to /etc/hosts"
fi
