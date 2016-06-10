alias apt-upgrade 'apt-get -y --print-uris -qq upgrade | python /opt/bin/apt2metalink.py | aria2c -d /var/cache/apt/archives/ -M- --file-allocation=none'
alias apt-show-url 'sudo apt-get install -qq --reinstall --print-uris $argv | cut -d" " -f1 | cut -d"\'" -f2'
alias apt-clean-removed-conf 'sudo dpkg -l | grep "^rc" | awk "{print $2}" | xargs sudo dpkg --purge'
alias apt-list-installed 'dpkg -l | grep "^ii" | sed "s_  _\t_g" | cut -f 2'

function apt-find-installed --argument-names pkg
	if test -n "$pkg"
		dpkg -l | grep $pkg
	else
		echo "syntax: apt-find-installed [package name]"
	end
end

function apt-remove-old-kernel -d 'remote outdated kernel'
	for i in (ls /boot/ | grep vmlinuz | sed 's@vmlinuz-@linux-image-@g' | grep -v (uname -r))
		sudo aptutide remove $i
	end
	
	sudo update-grub
end

function apt-repo-update --description 'update indivual apt-get repository'
	for src in $argv
		sudo apt-get update -o Dir::Etc::sourcelist="sources.list.d/$src" -o Dir::Etc::sourceparts="-" -o APT::Get::List-Cleanup="0"
	end
end
