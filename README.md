# About this repository

This is a repository to store a code and concepts of free youtube course 'Jornada Devops de Elite' that is teachered by Fabricio Veronez (DevOps Pro).

I was used a Ubuntu SO and all of install documentation are about that.

All examples are store in the respective folder and documented in Makefile also.

## Part 1 - Docker and containerization

### Prerequisites to install

- docker: https://docs.docker.com/engine/install/ubuntu/
- make: https://www.gnu.org/software/make/

### Docker Architecture

![dockerArch](docker_architecture.svg)

### Docker layers

![aboutdocker](AboutDocker.drawio.png)

## Part 2 - Kubernets and container orchestration

### Prerequisites to install

- k3d: https://k3d.io/v5.4.6/
    It is a tool to run kubernets cluster locally

- kubect: https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/
    It is a tool to interacts with kubernets cluster

### k3d cluster

To create a k3d cluster run: 
    k3d cluster create <cluster_name> (optional)
    k3d cluster create --no-lb (optional condition without load balancer)

To create a k3d cluster with server/agents

    k3d create <cluster_name> --servers <number> --agents <number>
    example: k3d cluster create simple-cluster --servers 2 --agents 2

To list cluster:
    k3d cluster list

To delete cluster
    k3d cluster delete

## kubernets resources

**Pod:**

It is a smallest resource in kubernets and into them is stored containers.

- All containers in same pod share IP and file system.

![pod](Kubernets-pods.drawio.png)

### kubect general commands

- see default kube config file by path
    cat ~/.kube/config

- list api resource api

    kubect api-resources
    
    with resource filter: kubectl api-resource | grep <resource>

- list resources (nodes,deployments,pods and other)
    kubect get <resource>
    
- describe resource:
    kubect describe <resource> <name>
## General Reference

(Docker)
- https://www.youtube.com/watch?v=UlbeZ97TWyY&t=197s

(Kubernets)
- https://www.youtube.com/watch?v=4U2Ej_miGeM&t=4s
