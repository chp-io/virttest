#!/bin/bash
set -eu

cd ./vagrant/ivhost
vagrant up
vagrant status
