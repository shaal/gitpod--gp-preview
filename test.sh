#!/usr/bin/env bash

set -x

npx -y cowsay "Preview browser should open by itself, without clicking inside VScode's Terminal panel"
sleep 10
echo "sleeping for 10 seconds"
npx -y serve &
gp await-port 3000
sleep 1
gp preview $(gp url 3000)