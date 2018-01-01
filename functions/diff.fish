function diff -d "git diff if under git repo, or normal diff if outside git diff"
	__is_inside_git_repo

	if [ $status -eq 0 ]
		sh -c "git diff $argv"
	else
		_grc_wrap diff $argv
	end
end

