.PHONY: build clean prettier start

build: clean
	ssssg build
	prettier --write "docs/**/*.html"

clean:
	rm -rf docs

prettier:
	prettier --write "components/**/*.html"
	prettier --write "layouts/**/*.html"
	prettier --write "pages/**/*.html"

start:
	ssssg serve
