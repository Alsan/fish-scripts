function apt-clean-removed-conf --description 'alias apt-clean-removed-conf sudo dpkg -l | grep "^rc" | awk "{print $2}" | xargs sudo dpkg --purge'
    sudo dpkg -l | grep "^rc" | awk "{print $2}" | xargs sudo dpkg --purge $argv

end
