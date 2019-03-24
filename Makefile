talk-file = slides.md

PANDOC_FLAGS =\
	--slide-level=2 \
    --filter=filters/pandoc-mermaid.py \
    --filter=filters/graphviz.py

all: index.html talk.tex talk.pdf talk-handout.pdf talk-notes.pdf

start: talk.html
	sensible-browser $<

index.html: $(talk-file)
	pandoc -t revealjs -s -V revealjs-url=https://revealjs.com --css style.css \
		-V theme=night $(PANDOC_FLAGS) -o $@ $<

talk.tex: $(talk-file)
	pandoc --standalone $(PANDOC_FLAGS) --to beamer -o $@ $<

talk.pdf: $(talk-file)
	pandoc --standalone $(PANDOC_FLAGS) --to beamer \
		--latex-engine=xelatex \
		-o $@ $<

talk-notes.pdf: $(talk-file)
	pandoc --standalone $(PANDOC_FLAGS) --to beamer \
		--latex-engine=xelatex \
		--metadata='classoption:notes=only' \
		-o $@ $<

talk-handout.pdf: $(talk-file)
	pandoc --standalone $(PANDOC_FLAGS) --to latex \
		--latex-engine=xelatex \
		-o $@ $<

clean:
	rm index.html talk.pdf talk.tex talk-handout.pdf talk-notes.pdf

.PHONY: all clean open
