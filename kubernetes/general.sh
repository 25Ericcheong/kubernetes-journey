kubectl get pods

kubectl apply -f filename.yml

kubectl describe pod podname

kubectl get pods -n namespace_name

kubectl exec -it pod_name -- sh # go into pod and interact with shell

watch -n 0.1 kubectl get pods -o wide # prints every 0.1s of all pods

