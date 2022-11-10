virt-host-validate
touch /boot/cmdline.txt
echo -n "cgroup_enable=cpuset cgroup_memory=1 cgroup_enable=memory" >> /boot/cmdline.txt
cat /boot/cmdline.txt
echo "Need reboot 'sudo reboot'"
