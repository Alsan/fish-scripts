function apt-remove-old-kernel --description 'remote outdated kernel'
    for i in (ls /boot/ | grep vmlinuz | sed 's@vmlinuz-@linux-image-@g' | grep -v (uname -r))
        sudo aptutide remove $i
    end

    sudo update-grub
end
