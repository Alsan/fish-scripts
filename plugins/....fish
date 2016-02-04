function ... -d 'cd to grand-parent' --argument-names 'dir'
	if test -n '$dir'
		cd ../../$dir
	else
		cd ../..
	end
end
