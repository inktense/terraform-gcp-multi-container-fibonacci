# gcp-multi-container-fibonacci
IAC for docker-multi-container-fibonacci project stored on GCP.


We need to manually setup the postgress pass secret inside the gcp k8s cluster. In order to do this:
1. Go to console and click on right upper corner buton "Generate console"
2. then add the following in the new terminal:

gcloud config set project k8s-multi-container-fibonacci

gcloud config set compute/zone europe-west2-a 
gcloud container clusters get-credentials k8s-multi-container-fibonacci-cluster 

kubectl create secret generic pgpassword --from-literal PGPASSWORD=password

Helm
A program used to administer 3 party sofware into the kube cluster

Run the following in GCC:

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

install Nginx 
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm install my-release ingress-nginx/ingress-nginx

