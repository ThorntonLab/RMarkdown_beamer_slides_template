SLIDES:=PresentationSlides.pdf

all: $(SLIDES)

clean:
	rm -f $(SLIDES)

# List the dependencies for the presentation
$(SLIDES): preamble.tex

%.pdf: %.Rmd
	R --no-save --quiet -e "rmarkdown::render('$<')"
