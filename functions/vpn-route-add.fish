function vpn-route-add
	sudo ip route add 10.2.0.0/16 via 172.28.213.1 dev wlp6s0
end
