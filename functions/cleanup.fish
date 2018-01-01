function cleanup
	# clean untaged images
	docker images --no-trunc | grep '<none>' | awk '{ print $3 }' | xargs -r docker rmi
	
	# remove exited containers
	docker ps --filter status=dead --filter status=exited -aq | xargs docker rm -v

	# remove unused volume (for docker 1.9+)
	docker volume ls -qf dangling=true | xargs -r docker volume rm
end
