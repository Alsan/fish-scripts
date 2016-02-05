function pairing --description 'pairing logitech unifying receiver with mouse'
	sudo unify /dev/hidraw1

	if [ $status -gt 0 ]
		sudo unify /dev/hidraw2
	end
end
