function ps-kill -d 'kill all given (partial) named process' --argument-names 'name'
	if test -n "$name"
		for i in (pgrep $name)
			kill -9 $i
		end
	else
		echo 'syntax: ps-kill [process name]'
	end
end

