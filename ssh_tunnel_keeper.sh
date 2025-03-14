# Max Base
# Keep a socks5 tunnel via ssh in background alive... 

while true
do
	# socks
	sshpass -p "******" ssh -D 9999 -q -C -N root@******
	sleep 15
done
