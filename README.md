# gcp-multi-container-fibonacci
This repository contains the Infrastructure as Code (IaC) for the [Docker Multi-Container Fibonacci project](https://github.com/inktense/k8s-multi-container-fibonacci) deployed on Google Cloud Platform (GCP).

## Prerequisites

1. A GCP account.
2. Terraform.
3. The [gcloud CLI](https://cloud.google.com/sdk/gcloud).


## Setup

Provision the infrastructure by running:
```bash
tf apply
```

### Setting up PostgreSQL Password Secret
--------
To set up the PostgreSQL password secret inside the GCP Kubernetes cluster, follow these steps:

1. Open the GCP console and click on the "Generate Console" button in the upper-right corner.
2. In the new terminal, execute the following commands:
```shell
gcloud config set project k8s-multi-container-fibonacci
gcloud config set compute/zone europe-west2-a
gcloud container clusters get-credentials k8s-multi-container-fibonacci-cluster
kubectl create secret generic pgpassword --from-literal PGPASSWORD=password

```

### Helm
----

Helm is a program used to administer third-party software into the Kubernetes cluster.

To install Helm, run the following commands in your GCP environment:

```shell

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
```

### Install Nginx
------

To install Nginx using Helm, run the following commands in your GCP environment:

```shell

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm install my-release ingress-nginx/ingress-nginx
```

These instructions will set up the necessary components for the Multi-Container Fibonacci project on GCP.

## Deploy k8s

After the infrastructure is setup the content of [Docker Multi-Container Fibonacci project](https://github.com/inktense/k8s-multi-container-fibonacci) can be deployed.

