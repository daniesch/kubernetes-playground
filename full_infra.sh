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

## DEPLOY Ingress NGINX PLUS & Service for Ingress

kubectl apply -f 2_nginx_ingress/nginx-plus-ingress-nap.yaml
sleep .5
kubectl apply -f 2_nginx_ingress/nodeport.yaml
sleep .5

## DEPLOY arcadia

kubectl apply -f 3_arcadia_app/all_apps.yaml
sleep .5
kubectl apply -f 4_k8s_ingress_arcadia/ingress_arcadia.yaml
sleep .5

## DEPLOY prometheus & grafana

kubectl apply -f 5_prometheus_grafana/grafana/grafana.yaml
sleep .5
kubectl apply -f 5_prometheus_grafana/prometheus/prometheus_deplo.yaml
sleep .5
kubectl apply -f 5_prometheus_grafana/prometheus/prometheus.yml
