# On-prem deployments

expose on local network with metallb -   
(can use lb since just TCP)  
```bash
kubectl apply -f pg_lb.yaml
```

check connection (after DNS record update)
```bash
nc -zv postgres.lan 5432
```
