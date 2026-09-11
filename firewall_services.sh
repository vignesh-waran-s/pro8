#!/bin/bash

# ==========================================
# Managing Firewall Services using firewalld
#
# Student Name:vigneshwaran
# Roll Number:1u24it126
# ==========================================

# Check current firewall services
sudo firewall-cmd --list-services


# Allow HTTP service
sudo firewall-cmd --add-service=http


# Allow HTTPS service
sudo firewall-cmd --add-service=https


# Display enabled services
sudo firewall-cmd --list-services


# Remove HTTP service
sudo firewall-cmd --remove-service=http


# Allow SSH permanently
sudo firewall-cmd --permanent --add-service=ssh


# Reload firewall configuration
sudo firewall-cmd --reload


