function jar-deploy --argument-names group artifact version jar
	set -l username "alsan"
	set -l password "KyHS4s77t1"
	set -l repo_url http://192.168.2.250:8082/repository/3rd_party
	set -l group_path (echo $group | tr \. \/)

	curl -v -u $username:$password --upload-file $jar $repo_url/$group_path/$artifact/$version/$artifact-$version.jar
end
