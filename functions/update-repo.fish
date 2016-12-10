function update-repo
	for src in $argv
		sudo apt-get update -o Dir::Etc::sourcelist="sources.list.d/$src" -o Dir::Etc::sourceparts="-" -o APT::Get::List-Cleanup="0"
	end
end
