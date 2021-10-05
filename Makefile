.PHONY: build deploy

build:
	cp -R public/* dist/
	git add dist/
	git commit -m "build dist/"
	git push -u origin main

deploy:
	git subtree push --prefix dist origin gh-pages
