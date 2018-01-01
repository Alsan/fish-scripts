function adoc-2-pdf --argument-names article
	docker run -it --rm -v (pwd):/documents asciidoc su-exec default-user asciidoctor-pdf -r asciidoctor-diagram $article
end
