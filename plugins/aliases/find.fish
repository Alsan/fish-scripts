alias remove-curr-path 'sed "s/^\.\///g;s/: / :/g"'

function find-ext -d 'find file with keyword by extension' --argument-names ext keyword grep_options
	set opt_or $grep_options '-n'

	if test -n "$keyword"
		find . -name "*.$ext" -type f -exec grep $opt_or $keyword "{}" \+
	else
		find . -name "*.$ext" -type f
	end
end

alias find-java 'find-ext java'
alias find-html 'find-ext html'
alias find-xml 'find-ext xml'
alias find-js 'find-ext js'
alias find-sql 'find-ext sql'
alias find-cs 'find-ext cs'
alias find-py 'fnd-ext py'
alias find-sh 'find-ext sh'
alias find-fish 'find-ext fish'
alias find-css 'find-ext css'
alias find-less 'find-ext less'
