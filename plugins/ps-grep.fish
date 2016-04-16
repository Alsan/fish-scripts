function ps-grep --argument-names pname
	ps aux | grep $pname | grep -v grep
end
