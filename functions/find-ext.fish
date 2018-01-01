function find-ext --description 'find file with keyword by extension' --argument-names ext keyword grep_options
    set opt_or $grep_options '-n'

    if test -n "$keyword"
        find . -name "*.$ext" -type f -exec grep $opt_or $keyword "{}" \+
    else
        find . -name "*.$ext" -type f
    end
end
