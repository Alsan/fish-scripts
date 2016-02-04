function .... -d 'cd to parent of grand-parent' --argument-names 'dir'
	if test -n '$dir'
		cd ../../../$dir
	else
		cd ../../..
	end
end
