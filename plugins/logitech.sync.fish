function logitech.sync --description 'sync logitech mouse receiver'
	sudo unify /dev/hidraw1

	if [ $status -gt 0 ]
		sudo unify /dev/hidraw2
	end
end
