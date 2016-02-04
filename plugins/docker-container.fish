function docker-container -d 'get docker container id' --argument-names 'name'
	if test -n '$name'
		docker-ps-all | grep $name | cut -d' ' -f1
	else
		echo 'syntax: docker-container [container name]'
	end
end

