function ext-ip --description 'alias ext-ip dig +short myip.opendns.com @resolver1.opendns.com'
    dig +short myip.opendns.com @resolver1.opendns.com $argv

end
