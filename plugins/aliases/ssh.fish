alias ssh-mount 'fusermount -u'
alias ssh-keygen 'ssh-keygen -b 2048 -t rsa -f sshkey.rsa -q -N ""'

function rscreen --argument-names host
	ssh $host -t 'screen -dRR'
end
