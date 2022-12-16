#!/bin/bash

cd guests/linux/ubuntu2004 && \
vagrant up --provider=libvirt && \
vagrant status
