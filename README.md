# qiskit-docker
* This repo 'dockerizes'  the development version of [qiskit-terra](https://github.com/Qiskit/qiskit-terra), [aqua](https://github.com/Qiskit/aqua) and [aqua-chemistry](https://github.com/Qiskit/aqua-chemistry)


## Pre-requisites
* docker: To build a docker image, you need to have docker installed and start the docker service. Also make sure to set appropriate user permission to run docker. Visit the [docker website](https://www.docker.com/) for OS specific instructions. If you are running Windows 7, you will need to install [docker toolbox](https://docs.docker.com/toolbox/toolbox_install_windows/)
- OS: Linux or Mac (tested only on Linux). 

## Docker image
* The docker image can be pulled directly from dockerhub: `docker pull nsathaye/qiskit-dev`. See https://hub.docker.com/r/nsathaye/qiskit-dev/ for more information. 
* If you choose to build the docker image, read the next section. 

## Building the docker image using Dockerfile
* Make sure that pre-requisites are in place. 
* Download (and extract the zip file) or `git clone` this repository.
* `cd` to the directory and then execute: <br> `docker build -t  qiskit-dev .` 

## Starting a Jupyter notebook container
* You can then start the jupyter notebook within the docker container as: <br> `docker run -it -p 8888:8888 docker.io/nsathaye/qiskit-dev` <br> OR if you have built the image yourself, then: <br> * `docker run -it -p 8888:8888 qiskit-dev`
* The earlier step should print a URL. Just copy-paste the in the browser of your host machine. For example: <br> 
```
docker run -it -p 8888:8888 docker.io/nsathaye/qiskit-dev
[I 10:59:27.315 NotebookApp] Writing notebook server cookie secret to /home/qiskitter/.local/share/jupyter/runtime/notebook_cookie_secret
[I 10:59:27.675 NotebookApp] Serving notebooks from local directory: /home/qiskitter
[I 10:59:27.675 NotebookApp] The Jupyter Notebook is running at:
[I 10:59:27.675 NotebookApp] http://(d14415a6c8af or 127.0.0.1):8888/?token=92b26e1a09ef2968cc5cc39c36bec1b1eba081ce9f4f15f5
[I 10:59:27.675 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 10:59:27.677 NotebookApp] 

 Copy/paste this URL into your browser when you connect for the first time,
 to login with a token:
     http://localhost:8888/?token=92b26e1a09ef2968cc5cc39c36bec1b1eba081ce9f4f15f5
```

On windows 7, when you start the docker toolbox, it should print the ip in the command prompt with a message such as: "docker is configured to use the default machine with IP 192.x.x.x.x .. . Just use that 192.x ip it prints , instead of "localhost"

  
