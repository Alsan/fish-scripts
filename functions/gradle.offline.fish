function gradle.compile --description 'alias gradle.compile gradle build --daemon'
    gradle build --daemon --offline -x test $argv

end
