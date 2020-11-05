## DEPLY GLOBAL filse & Hackazone

sleep .5
kubectl apply -f 1_basicdeployment/ns-and-sa.yaml
sleep .5
kubectl apply -f 1_basicdeployment/rbac.yaml
sleep .5
kubectl apply -f 1_basicdeployment/ap-rbac.yaml
sleep .5
kubectl apply -f 1_basicdeployment/default-server-secret.yaml
sleep .5
kubectl apply -f 1_basicdeployment/nginx-config.yaml
sleep .5
kubectl apply -f 1_basicdeployment/vs-definition.yaml
sleep .5
kubectl apply -f 1_basicdeployment/vsr-definition.yaml
sleep .5
kubectl apply -f 1_basicdeployment/ts-definition.yaml
sleep .5
kubectl apply -f 1_basicdeployment/policy-definition.yaml
sleep .5
kubectl apply -f 1_basicdeployment/gc-definition.yaml
sleep .5
kubectl apply -f 1_basicdeployment/global-configuration.yaml
sleep .5
kubectl apply -f 1_basicdeployment/ap-logconf-definition.yaml
sleep .5
kubectl apply -f 1_basicdeployment/ap-policy-definition.yaml
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
