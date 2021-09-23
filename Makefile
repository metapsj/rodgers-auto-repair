.PHONY: build deploy

build:
	cp -R src/* dist/

deploy:
	git subtree push --prefix dist origin gh-pages
