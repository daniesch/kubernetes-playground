## DELETE GLOBAL filse & Hackazone


kubectl delete --ignore-not-found=true -f 1_basicdeployment/default-server-secret.yaml
sleep .5
kubectl delete --ignore-not-found=true -f 1_basicdeployment/nginx/
sleep .5
kubectl delete --ignore-not-found=true -f 1_basicdeployment/rbac.yaml
sleep .5
kubectl delete --ignore-not-found=true -f 1_basicdeployment/nginx/crds/
sleep .5
kubectl delete --ignore-not-found=true -f 1_basicdeployment/nginx/rbac/
sleep .5

## DELETE Ingress NGINX PLUS & Service for Ingress & dashboard for nginx

kubectl delete --ignore-not-found=true -f 2_nginx_ingress/
sleep .5

## DELETE arcadia & dvwa & hackazon

kubectl delete --ignore-not-found=true -f 3_arcadia_app/
sleep .5
kubectl delete --ignore-not-found=true -f 4_dvwa/
sleep .5
kubectl delete --ignore-not-found=true -f 5_hackazon/
sleep .5

## DELETE prometheus & grafana

kubectl delete --ignore-not-found=true -f 6_prometheus_grafana/
sleep .5
kubectl delete --ignore-not-found=true -f 1_basicdeployment/ns-and-sa.yaml
