docker pull quay.io/calico/typha:v3.23.5
docker pull quay.io/calico/kube-controllers:v3.23.5
docker pull quay.io/calico/apiserver:v3.23.5
docker pull quay.io/calico/cni:v3.23.5
docker pull quay.io/calico/node:v3.23.5
docker pull quay.io/calico/pod2daemon-flexvol:v3.24.3

docker save -o typha.v3.23.5.tar quay.io/calico/typha:v3.23.5
docker save -o kube-controllers.v3.23.5.tar kube quay.io/calico/kube-controllers:v3.23.5
docker save -o apiserver.v3.23.5.tar quay.io/calico/apiserver:v3.23.5
docker save -o cni.v3.23.5.tar quay.io/calico/cni:v3.23.5
docker save -o node.v3.23.5.tar quay.io/calico/node:v3.23.5
docker save -o pod2daemon-flexvol.v3.24.3.tar quay.io/calico/pod2daemon-flexvol:v3.24.3


