#!/bin/bash


if ! sysctl -a | grep 'machdep.cpu.features' | grep 'VMX'; then
  echo "VMX feature for cpu is not found! Exiting..."
  exit 1
fi


if ! vagrant -v; then
  echo "Vagrant is not here! Exiting..."
  exit 1
fi

if ! VBoxManage -v; then
  echo "Vagrant is not here! Exiting..."
  exit 1
fi
