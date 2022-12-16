#!/bin/bash
set -eu

cd ./vagrant/ivkvm_builder
vagrant up
vagrant status
