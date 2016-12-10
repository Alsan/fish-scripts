function ntp-update -d 'alias ntp-update sudo ntpdate stdtime.gov.hk'
    sudo ntpdate stdtime.gov.hk $argv

end
