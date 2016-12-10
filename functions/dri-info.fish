function dri-info --description 'alias dri-info glxinfo | grep "renderer string"'
    glxinfo | grep "renderer string" $argv

end
