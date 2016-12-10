function apt-show-url --description alias\ apt-show-url\ sudo\ apt-get\ install\ -qq\ --reinstall\ --print-uris\ \$argv\ \|\ cut\ -d\"\ \"\ -f1\ \|\ cut\ -d\"\'\"\ -f2
    sudo apt-get install -qq --reinstall --print-uris $argv | cut -d" " -f1 | cut -d"'" -f2 $argv

end
