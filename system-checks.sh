#!/bin/bash

echo "CPU Count:"
hwprefs cpu_count

echo "RAM  Size:"
hwprefs memory_size

echo "CPU Flags:"
if ! sysctl -a | grep 'machdep.cpu.features' | grep 'VMX'; then
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
