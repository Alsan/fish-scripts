function clean-untag --description 'clean all untagged images'
    docker rmi (docker images | grep "<none>" | strip-ansi | awk '{print $3}')
end
