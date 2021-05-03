# FIBER Demo
Repository to try out FIBER features using Docker. It provides you with a working Jupyter notebook session with example data to try some features provided by FIBER. In a nutshell, this docker image provides you with a working MySQL instance containing example data, installs FIBER along with the required dependencies and runs a notebook on the desired port.

To get started, please proceed as follows:

- Install docker on your system. 
- Clone this repository in the directory of your choice
- Run `cd fiber-demo` 
- Run `docker-compose up`
- Navigate to `http://localhost:8999/`

To change the default port for the Jupyter notebook, please `FIBER_DEMO_PORT` under the `.env` configuration file.