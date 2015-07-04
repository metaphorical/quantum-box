#!/bin/bash

#All postinstall initiations go here


# setup docker with docker provided script
# @TODO - try to set version of Docker (to be able to not upgrade if new version is buggy or we just want to switch versions)
# @TODO - add Puppet module and configurable provisioning to be able to load specific docker image on provision

wget -qO- https://get.docker.com/ | sh