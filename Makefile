SLIDES:=PresentationSlides.pdf

# It is a good idea for your presentation
# to rebuild if any external graphics change,
# so we list them as build dependencies
IMAGES:=Model.png

all: $(SLIDES)

clean:
	rm -f $(SLIDES)

# List the dependencies for the presentation
$(SLIDES): preamble.tex $(IMAGES)

%.pdf: %.Rmd
	R --no-save --quiet -e "rmarkdown::render('$<')"
