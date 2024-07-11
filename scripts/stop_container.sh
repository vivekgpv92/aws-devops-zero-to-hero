#!/bin/bash
set -e

#Stop container
docker rm -f $(docker ps -q)
