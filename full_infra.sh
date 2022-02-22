## DEPLY GLOBAL filse & Hackazone

sleep .5
kubectl apply -f 1_basicdeployment/ns-and-sa.yaml
sleep .5
kubectl create -f 1_basicdeployment/rbac.yaml
sleep .5
kubectl apply -f 1_basicdeployment/nginx/
sleep .5
kubectl apply -f 1_basicdeployment/nginx/rbac
sleep .5
kubectl apply -f 1_basicdeployment/nginx/crds
sleep .5
kubectl apply -f 1_basicdeployment/default-server-secret.yaml
sleep .5


## DEPLOY Ingress NGINX PLUS & Service for Ingress & dashboard for nginx

kubectl apply -f 2_nginx_ingress/
sleep .5

## DEPLOY arcadia & dvwa & Hackazon

kubectl apply -f 3_arcadia_app/
sleep .5
kubectl apply -f 4_dvwa/
sleep .5
kubectl apply -f 5_hackazon/
sleep .5

## DEPLOY prometheus & grafana

kubectl apply -f 6_prometheus_grafana/
sleep .5
