function vbox-suspend
	VBoxManage controlvm $argv savestate
end
