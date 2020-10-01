# Template for R Markdown "beamer" slides

## To use this repository

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
3. Write your slides!

### Building your presentation

Execute `make`.
If you use a `vim`-like editor, then execute this command when in `normal` mode:

```
:make
```

### Changing the theme

1. Get a new `beamer` theme, add it to your repository and commit it.
2. Change `theme:` in the `YAML` block at the top of your `Rmd` file.

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

