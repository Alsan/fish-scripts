function remove-all-ext -d 'remove all files with extension from git repo' --argument-names ext
    if test -n $ext
        for f in (find . -name "*.$ext")
            delete --cached $f
            delete $f
        end
        echo "*.$ext" >>.gitignore
    else
        echo "syntax: remove [ext]"
    end
end
