function ssh-copy-files --argument-names host location
	if begin; test -n "$host"; and test -n "$location"; end
		tar zc * | ssh $host "cat | tar zx -C $location"
	else
		echo "ssh-copy-files [host] [location]"
	end
end