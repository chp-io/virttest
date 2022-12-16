#!/bin/bash

cd guests/windows/server2019 && \
VAGRANT_LOG=debug vagrant up --provider=libvirt && \
vagrant status

