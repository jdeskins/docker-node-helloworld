# docker-node-helloworld

Demo to run Node.js in Docker container.

Run start_docker.sh script to automatically build and run the docker image.

### Using new Deployments Feature

```
kubectl create -f helloworld-v1.yaml
kubectl expose deployment hello-node --type="LoadBalancer"
```

### Rolling Update
```
kubectl apply -f helloworld-v2.yaml
```

To show pod labels:
```
kubectl get pods --show-labels
```

Scale with command line:
```
kubectl scale deployment hello-node --replicas=2
```

## Misc Notes

```
kubectl run deployments/helloworld-v1.yaml
```

```
kubectl get pods
```

```
kubectl expose deployment hello-node --type="LoadBalancer"
```

```
kubectl get svc hello-node
kubectl get services hello-node
```

```
kubectl describe svc hello-node
```

```
kubectl get services kube-dns --namespace=kube-system
```
