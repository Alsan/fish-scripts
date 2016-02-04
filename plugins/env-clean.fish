function env-clean -d 'clean environment variables'
	echo 'Before execuation'
	free

#	sudo sh -c 'echo 1 > /proc/sys/vm/drop_caches' # free pagecache
#	sudo sh -c 'echo 2 > /proc/sys/vm/drop_caches' # free dentries and inodes
	sudo sh -c 'echo 3 > /proc/sys/vm/drop_caches' # free pagecache, dentries and inodes

	echo ''
	echo '==============================='
	echo ''
	echo 'After execuation'
	free
end
