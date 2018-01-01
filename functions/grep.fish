function grep
	command grep --color=always $argv | command grep -v grep
end
