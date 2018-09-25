# qiskit-docker
This repo 'dockerizes'  the development version of qiskit-terra,aqua and aqua-chemistry 

## Pre-requisites
- docker: To create a docker image `build_qiskit_docker.sh`, you need to have docker installed (with docker service running). Also make sure to set appropriate user permission to run  docker. 
- git
- OS: Linux or Mac (tested only on Linux). 

## Creating a single docker image 
Here is a quick way to build a single docker image that includes developmental Python packages of qiskit-terra, aqua and aqua-chemistry. First `cd` to the directory where you have cloned this repo and then execute: <br> `docker build -t  qiskit-all-dev .` 

## Building inidividual docker images

<To be updated >



