sudo qemu-system-aarch64 -s -fsdev local,id=myid,path=$(pwd)/fs0,security_model=none \
                         -device virtio-9p-pci,fsdev=myid,mount_tag=rootfs,disable-modern=on,disable-legacy=off \
                         -netdev bridge,id=en0,br=br0 \
                         -device virtio-net-pci,netdev=en0 \
                         -kernel "build/app-redis_kvm-arm64.dbg" \
                         -append "netdev.ipv4_addr=172.44.0.2 netdev.ipv4_gw_addr=172.44.0.1 netdev.ipv4_subnet_mask=255.255.255.0 -- /redis.conf " \
                         -machine virt \
                         -cpu host --enable-kvm \
			 -m 1024 \
                         -nographic
