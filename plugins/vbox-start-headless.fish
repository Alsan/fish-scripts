function vbox-start-headless
	nohup VBoxHeadless -s $argv 1>/dev/null 2>/dev/null &
end
