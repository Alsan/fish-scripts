function adb-add-route
	adb-su ip route add 172.28.213.3/32 dev wlan0
end
