#!/usr/bin/env Rscript

pkg_list <- c(
		"tidyverse",
		"devtools",
		"roxygen2",
		"lubridate",
		"zoo"
	      )

install.packages(pkg_list, dependencies = TRUE)
