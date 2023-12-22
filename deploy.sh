docker run -d \
    --name coredns \
    -v ./coredns:/root \
    -p 53:53/udp \
    coredns/coredns -conf /root/corefile
    
    
podman run --expose=53 --expose=53/udp -p 53:53 -p 53:53/udp -v ./coredns:/etc/coredns --name coredns burkeazbill/docker-coredns -conf /etc/coredns/Corefile