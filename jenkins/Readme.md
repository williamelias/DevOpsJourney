
### Prerequisites

- jenkins : 

    install java jdk: sudo apt install openjdk-17-jdk -y 
    install jenkins: https://www.jenkins.io/doc/book/installing/linux/#debianubuntu

- install docker: curl -fsSL https://get.docker.com | sh

- grant privileges to jenkins user: usermod -aG docker jenkins

- restart jenkins to apply changes: systemctl restart jenkins

- install kubectl : https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/