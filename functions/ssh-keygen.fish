function ssh-keygen -d 'alias ssh-keygen ssh-keygen -b 2048 -t rsa -f sshkey.rsa -q -N ""'
    command ssh-keygen -b 2048 -t rsa -f sshkey.rsa -q -N "" $argv
end
