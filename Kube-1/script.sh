
#Homework
# 1.create replicaset for nginx (declarative)
# 2.create deployment for nginx  (declarative)
# 3.set new image for deployment (imperative)
# 4.rollout undo to the previous version (imperative)

minikube status wait-ready
minikube start
kubectl apply -f rs.yaml # 1
kubectl apply -f deployment.yaml #2
kubectl set image deployment/nginx-deployment nginx=nginx:1.9.1 #3
kubectl rollout undo deployment/nginx-deployment #4
