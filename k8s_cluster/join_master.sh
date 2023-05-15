# `kubeadm token create --print-join-command` can gendrate join command for worker node
# sudo kubeadm join --token <token> <master-ip>:<master-port> --discovery-token-ca-cert-hash sha256:<hash>