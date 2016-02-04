for d in (find $fisher_config/modules -maxdepth 1 -mindepth 1 -type d)
	source $d/(basename $d).fish
end
