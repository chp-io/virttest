#!/bin/bash

# https://ss64.com/osx/sysctl.html 
echo "CPU Count:"
sysctl -n hw.ncpu

echo "CPU Type:"
sysctl -n hw.cputype

echo "RAM  Size:"
sysctl -n hw.memsize | awk '{ foo = $1 / 1024 / 1024 / 1024 ; print foo "GB"}'

echo "Working Directory:"
pwd

echo "Disk Size:"
df -h

echo "CPU Features:"
if ! sysctl -n machdep.cpu.features | grep 'VMX'; then
  echo "VMX feature for cpu is not found! Exiting..."
  exit 1
fi

echo "Vagrant:"
if ! vagrant -v; then
  echo "Vagrant is not here! Exiting..."
  exit 1
fi

echo "VBoxManage:"
if ! VBoxManage -v; then
  echo "VBoxManage is not here! Exiting..."
  exit 1
fi

echo "Ansible:"
if ! ansible --version; then
  echo "Ansible is not here! Exiting..."
  exit 1
fi
