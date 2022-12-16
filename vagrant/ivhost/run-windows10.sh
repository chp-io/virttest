#!/bin/bash

cd guests/windows/windows10 && \
vagrant up --provider=libvirt && \
vagrant status
