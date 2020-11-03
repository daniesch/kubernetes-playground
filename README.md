# home-kubernetes


This project should help SE to set up a fully functional home env on their k8s cluster.

## Get Started!

You can use any k8s environment to play around with the following ENVIRONMENT, if you have nothing ready use DOCKER K8S or minikube.

Skip the next section if you have a running k8s, where you can play around with, but be carefully if you habe a NAMESPACE monitoring, arcadia, dvwa or hackazon. Does will be deleted at the END, if you run the cleanup.


### minikube

minikube is local Kubernetes, focusing on making it easy to learn and develop for Kubernetes.

All you need is Docker (or similarly compatible) container or a Virtual Machine environment, and Kubernetes is a single command away: minikube start

What you’ll need
2 CPUs or more
2GB of free memory
20GB of free disk space
Internet connection
Container or virtual machine manager, such as: Docker, Hyperkit, Hyper-V, KVM, Parallels, Podman, VirtualBox, or VMWare


### For Linux users:

Binary download
```
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
 sudo install minikube-linux-amd64 /usr/local/bin/minikube
```
Debian package
```
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb
```
RPM package
```
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
sudo rpm -ivh minikube-latest.x86_64.rpm
```

### for Mac users:

If the Brew Package Manager installed:
```
brew install minikube
```
If which minikube fails after installation via brew, you may have to remove the minikube cask and link the binary:

```
brew cask remove minikube
brew link minikube
```
Otherwise, download minikube directly:
```
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64
sudo install minikube-darwin-amd64 /usr/local/bin/minikube
```

### For Windows users:

If the Chocolatey Package Manager is installed, use it to install minikube:
https://chocolatey.org/

```
choco install minikube
```
Otherwise, download and run the Windows installer

```
https://storage.googleapis.com/minikube/releases/latest/minikube-installer.exe
```


# Start with the env

I added my pvt DOMAIN (schuler.io) for myself. Feel free to change that in all the APP Deployments. If you like to keep it change you hosts file to point to your k8s node.

## Deploy Full Infrastracture

with the following shell script will you be able to deploy all Apps, with nginx ingress.(NO NAP ADDED AT THIS STAGE)

```
./full_infra.sh

```

List the new deployed pods:

```
kubectl get pods -owide -A

```

You should se that we newly deployed nginx KIC, ARCADIA, DVWA & Hackazon. On Top did i Add Prometheus, Grafana & Alertmanager, just for getting a felling with it.

You will be now apple to brow your Apps in the Browser.

like dvwa.schuler.io:30080 or hackazon.schuler.io:30443

## Delete the Deployments

```
./full_cleanup.sh

```
