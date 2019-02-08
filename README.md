# uwds_dockerfile
Contains the Dockerfile of Underworlds (server only !)

## Docker installation instructions

First, install docker (briefly described below for x86_64, [original instructions here](https://docs.docker.com/install/linux/docker-ce/ubuntu/))

Install docker dependencies and add the docker official GPG key :
```
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
```
Verify that you get this :
```
pub   4096R/0EBFCD88 2017-02-22
      Key fingerprint = 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
uid                  Docker Release (CE deb) <docker@docker.com>
sub   4096R/F273FCD8 2017-02-22
```
Then, setup the repository with :
```
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
```
And install docker with :
```
sudo apt-get update
sudo apt-get install docker-ce
```
Test your installation with :
```
sudo docker run hello-world
```

To use docker without sudo, follow the [instructions here](https://docs.docker.com/install/linux/linux-postinstall/#manage-docker-as-a-non-root-user)

## Images installation

Clone the repository :
```
git clone https://github.com/underworlds-robot/uwds_dockerfile.git
```
And build the dockerfiles with :

```
cd uwds_dockerfile
sudo docker build .
```
