function file-dir --argument-names filename
	dirname (find . -name "$filename" -type f)
end

alias go-file-dir 'cd (file-dir $argv)'
