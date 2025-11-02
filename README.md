## 🔒 HTTPS (Self-Signed Certificate Setup)
- Added self-signed `ClusterIssuer` for certificate management
- Created TLS certificate for `myesi.local`
- Configured NGINX ingress to use HTTPS

### Apply Commands
```bash
kubectl apply -f cert-manager/cluster-issuer.yaml
kubectl apply -f k8s-tls/selfsigned-certificate.yaml
kubectl apply -f ingress/app-ingress.yaml
