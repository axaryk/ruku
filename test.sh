#!/bin/sh

cat scripts/22-04-ubuntu-minimal-aarch64_install-git-server.sh | docker run -i --rm ubuntu:22.04 sh
