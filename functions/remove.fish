function remove -d 'remove specified file from git repo' --argument-names fn
    if test -n $fn
        delete --cached $fn
        delete $f
    else
        echo "syntax: remove [filename.exe]"
    end
end
