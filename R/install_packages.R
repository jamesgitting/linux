#!/usr/bin/env Rscript

pkg_list <- c(
		"tidyverse",
		"devtools",
		"roxygen2",
		"lubridate",
		"zoo",
		"jsonlite"
	      )

ml_list <- c(
		"tensorflow",
		"keras",
		"mlr",
		"caret",
		"gbm"
	     )

install.packages(pkg_list, dependencies = TRUE)
install.packages(ml_list, dependencies = TRUE)
