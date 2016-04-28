alias init "git init"
alias remote "git remote"
alias state "git status"
alias log "git log --oneline --graph --decorate"
alias push "git push"
alias pull "git pull"
alias commit "git commit -m"
alias commit-all "git commit -am"
alias add "git add"
alias add-all "git add -A :/"
alias checkout "git checkout"
alias commit-amend "git commit --amend --no-edit"
alias commit-ammend-msg "git commit --amend -m"
alias branch "git branch"
alias clean "git clean -fd"
alias clean-preview "clean -n"
alias clone "git clone"
alias remote "git remote"
alias reset "git reset"
alias tag "git tag"
alias version-tag "tag (date +%Y%m%d)"

alias flow "git flow"
alias flow-init "git flow init -d"
alias feature "flow feature"
alias feature-start "feature start"
alias feature-finish "feature finish"
alias release "flow release"
alias release-start "release start"
alias release-finish "release finish"
alias hotfix "flow hotfix"
alias hotfix-start "hotfix start"
alias hotfix-finish "hotfix finish"
alias support "flow support"
alias support-start "support start"
alias support-finish "support finish"

function __is_inside_git_repo
	git rev-parse 2> /dev/null
end

function diff -d "git diff if under git repo, or normal diff if outside git diff"
	__is_inside_git_repo

	if [ $status -eq 0 ]
		sh -c "git diff $argv"
	else
		command diff $argv
	end
end

