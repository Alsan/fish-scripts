function apt-find-installed --argument pkg
    if test -n "$pkg"
        dpkg -l | grep $pkg
    else
        echo "syntax: apt-find-installed [package name]"
    end
end
