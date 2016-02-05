alias state 'git status'
alias log 'git log'
alias push 'git push'
alias pull 'git pull'
alias commit 'git commit -m'
alias commit-all 'git commit -am'
alias flow 'git flow'
alias add 'git add'
alias add-all 'git add -A :/'
alias checkout 'git checkout'

function __is_inside_git_repo
	git rev-parse 2> /dev/null
end

function diff -d 'git diff if under git repo, or normal diff if outside git diff'
	__is_inside_git_repo

	if [ $status -eq 0 ]
		git diff $argv
	else
		command diff $argv
	end
end
