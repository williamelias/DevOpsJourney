commands to execute pod

- kubect apply -f pod.example.yaml

command to expose pod locally

- kubect port-forward pod/meupod 8080:8080
- kubectl port-forward service/web-api 8080:8080

command to change to last version of deployment

- kubect rollout undo deployment <deployment_name>