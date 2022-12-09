#!/bin/bash


if ! sysctl -a | grep 'machdep.cpu.features' | grep 'VMX'; then
  echo "VMX feature for cpu is not found! Exiting..."
  exit 1
fi
