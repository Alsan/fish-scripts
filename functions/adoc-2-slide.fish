function adoc-2-slide --argument-names article
	docker run -it --rm -v (pwd):/documents asciidoc su-exec default-user asciidoctor -T /asciidoctor-backends/slim/dzslides $article
end
