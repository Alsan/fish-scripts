function wget-rest -d 'alias wget-rest wget -S -q --header "Accept: application/json" -O - '
    wget -S -q --header "Accept: application/json" -O - $argv
end
