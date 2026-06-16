# Helm Chart For Audio Monitoring Project

For now this is mainly just for the postgres container

Create the namespace
```bash
kubectl create namespace sensors
```

Create the sealed secret - 
Test a secret
```bash
# Seal the secret
kubeseal --format yaml < extras/plain_secret.yaml > chart/templates/sensor_secrets.yaml --controller-name=sealed-secrets --controller-namespace=sealed-secrets

# Apply the sealed secret
kubectl apply -f example-sealed-secret.yaml

# Verify the secret was created
kubectl get secret my-secret -n default
```

Test chart
```bash
helm install sensor ./ -f values.yaml --dry-run --debug -n sensors
```

deploy chart through argo cd