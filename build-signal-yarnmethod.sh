#!/bin/bash
export SIGNAL_ENV="production" 
echo "Initial Clean - Prep -->"
rm -rf Signal-Desktop
echo "Clone repo -->"
git clone https://github.com/WhisperSystems/Signal-Desktop.git
cd Signal-Desktop/
echo "Checkout repo -->"
#export SIGNAL_VERSION=$(git tag -l --sort=v:refname | grep -v beta | tail -1)
git checkout tags/$(git tag -l --sort=v:refname | grep -v beta | tail -1)
echo "Yarn time -->"
yarn install
yarn generate --force
echo "NPM build time -->"
npm run build -- --linux rpm
echo "copy rpm to docker volume -->"
cp dist/signal-desktop-*.x86_64.rpm /root/fedora_signaldesktopbuild/