# Template for R Markdown "beamer" slides

## To use this repository

Click `Use this template` from the `GitHub` interface.
Choose a name for your new repository.
You will get a copy of this repository with all the files but none of the commit history.

## Required R packages

It is probably helpful to make sure all of your packages are up to date!

At the very least:

* `rmarkdown`
* `knitr`
* `kableExtra`
* `magrittr`

## Steps to get your own talk started.

1. Rename `PresentationSlides.Rmd` to whatever you want it to be
2. Rename the value of the `SLIDES` variable in `Makefile` to match your new `Rmd` file name.
3. Remove `Model.png` and the contents of `references.bib`.
4. Update `Makefile` to reflect removing `Model.png`
5. Write your slides!

If you add external images to this repository that will be graphics for slides:

1. Commit them!
2. Add them to the `IMAGES` variable in `Makefile` so that your slides rebuild if they change.

### Building your presentation

Execute `make`.
If you use a `vim`-like editor, then execute this command when in `normal` mode:

```
:make
```

### Changing the theme

1. Get a new `beamer` theme, add it to your repository and commit it.
2. Change `theme:` in the `YAML` block at the top of your `Rmd` file.

### Converting to another output format

Change `output:` in the `YAML` block of the `Rmd` file.
For example, to get a `slidy` `HTML` presentation:

```
output: slidy_presentation
```

Once you change the output format, the `theme:` is no longer relevant and can be deleted from the `YAML` block.

Other things probably change as well:

* You may want to avoid using figure/table captions and cross references.
  Doing so is probably fine--they're a bit over the top for most presentations.
* Using `kable` for tables now requires some nuance, as you need to do different things for `HTML` output, etc..  
  The way to do this is to use the functions `knitr::is_html_output` and `knitr::is_latex_output`.

To generate *both* `PDF` and `HTML` output, you can make changes like this to the `Makefile`.
First, add an `html` output file target:

```
SLIDES:=PresentationSlides.pdf PresentationSlides.html
```

Then, add a build pattern to convert `Rmd` to `html`:

```
%.html: %.Rmd
	R --no-save --quiet -e "rmarkdown::render('$<', output_format='slidy_presentation')"
```

### Configuring the LaTeX 

1. Add your changes to `preamble.tex`.

### Configuring the R environment

1. Make the changes to the `r setup` block near the top of the `Rmd` file.

### Notes regarding Python

1. If you aren't using Python, remove these two lines:
	
```
library(reticulate) # For Python
use_python("/usr/bin/python3", required=T)
```

2. You may need to configure the path in the `use_python` command.

