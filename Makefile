.PHONY: build deploy

build:
	cp src/index.html dist/

deploy:
	git subtree push --prefix dist origin gh-pages
