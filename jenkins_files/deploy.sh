#/bin/bash
echo "-----------DEPLOY IN EC2-------------"

helm upgrade --install --wait mywebserver ./helm-charts/myserver
kubectl get all
