function adoc-2-epub --argument-names article
	docker run -it --rm -v (pwd):/documents asciidoc su-exec default-user asciidoctor-epub3 -r asciidoctor-diagram $article
end
