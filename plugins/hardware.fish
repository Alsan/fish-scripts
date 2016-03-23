function pairing --description 'pairing logitech unifying receiver with mouse'
	sudo unify /dev/hidraw1

	if [ $status -gt 0 ]
		sudo unify /dev/hidraw2
	end
end

function touchpad.enable --description 'enable touchpad'
	xinput set-prop 14 "Device Enabled" 1
	syndaemon -i 2 -K -d
end

function touchpad.disable --description 'disable touchpad'
	killall -9 syndaemon
	xinput set-prop 14 "Device Enabled" 0
end
