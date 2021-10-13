echo "Tải xuống các tệp windows"
wget -O w7x64.img https://bit.ly/akuhnetw7X64
echo Tải xuống tệp từ sever
apt-get install qemu
echo "Đợi"
echo "Khởi động Windows"
echo "Đợi 1-2 Phút để hoàn thành thiết lập"
echo "Không đóng tab này"
qemu-system-x86_64 -hda w7x64.img -m 8G -smp cores=4 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic
sleep 43200