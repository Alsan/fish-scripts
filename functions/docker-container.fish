function docker-container -d 'get docker container id' --argument-names 'name'
	if test -n "$name"
		docker-ps-all | grep $name | cut -d' ' -f1
	else
		echo 'syntax: docker-container [container name]'
	end
end

function docker.stop -d 'stop a running docker container' --argument-names name
	if test -n "$name"
		set container (docker-container $name)
		docker stop $container
		docker rm $container
	else
		echo 'syntax: docker.stop [container name]'
	end
end

