all: site book
site: _site/feed.xml
book: gfc.pdf
clean:
	-rm -r _site gfc.pdf
_site/feed.xml: _layouts/*.html _includes/*.html *.md ch*/*.md
	bundle exec jekyll build
gfc.pdf: bookindex.md ch*/*.md LICENSE.md
	pandoc -o $@ --chapters --latex-engine=lualatex -V documentclass=ltjbook $^
