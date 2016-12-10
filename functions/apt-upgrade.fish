function apt-upgrade --description 'alias apt-upgrade apt-get -y --print-uris -qq upgrade | python /opt/bin/apt2metalink.py | aria2c -d /var/cache/apt/archives/ -M- --file-allocation=none'
    apt-get -y --print-uris -qq upgrade | python /opt/bin/apt2metalink.py | aria2c -d /var/cache/apt/archives/ -M- --file-allocation=none $argv

end
