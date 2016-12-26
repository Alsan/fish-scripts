function sudo-echo --argument-names content file
	sudo bash -c 'echo $content | sudo tee $file'
end
