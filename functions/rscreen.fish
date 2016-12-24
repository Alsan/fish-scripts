function rscreen --argument-names host
    ssh $host -t 'screen -dRR'
end
