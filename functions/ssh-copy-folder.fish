function ssh-copy-folder --argument-names local_folder host remote_folder
	if begin; test -n "$local_folder"; and test -n "$host"; and test -n "$remote_folder"; end
		tar zcf - $local_folder | ssh $host "tar zxf - -C $remote_folder"
	else
		echo "syntax: ssh-copy-folder [local_folder] [host] [remote_folder]"
	end
end
