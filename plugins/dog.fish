function dog
	source-highlight --out-format=esc256 -o STDOUT -i $argv
	if test $status -gt 0
		pygmentize -f 256 -g -O style=monokai $argv
	end
end
