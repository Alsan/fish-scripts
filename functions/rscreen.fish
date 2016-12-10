function rscreen --argument host
    ssh $host -t 'screen -dRR'
end
