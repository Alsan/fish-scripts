function svn-ignore --argument-names ignorefile
	svn propset svn:ignore -RF $ignorefile .
end
