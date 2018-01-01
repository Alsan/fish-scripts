function adoc-2-html --argument-names article
	docker run -it --rm -v (pwd):/documents asciidoc su-exec default-user asciidoctor -r asciidoctor-diagram $article
end
