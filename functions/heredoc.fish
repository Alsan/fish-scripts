function heredoc
    set label $argv[1]
    set script (status -f)
    set print -1

    for line in (cat $script)
        if test (echo $line | grep '^#'$label)  
            # print from, not including, label to label
            set print (math "$print*-1")
        else if test $print -eq 1
            echo $line | sed 's/^.//' # remove first character (#)
        end
    end
end
