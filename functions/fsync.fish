function fsync --argument-names local remote
	rsync --archive --delete -v --progress $local $remote
end
