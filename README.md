# Custom Docker Container For Building Signal Messenger For RPM Based Distros (Fedora, etc)                                                     
Custom Docker image that utilizes fedra:latest as the base image for building rpm of Signal Desktop from project's source.

## Details
Contains a custom docker image for fedora:latest that pulls and builds latest secure Signal Messenger Desktop code from github.  Until Signal starts to build an official RPM (Ubuntu users are lucky they get a build :( ) - this will suffice.  Secure - no third party repos - since its built from the source.

 - Signal Desktop  (Signal.org) : https://signal.org