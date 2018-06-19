options(prompt="R> ")
options(continue="R+> ")
options(width=200)
options(scipen=999)

options(repos = c(CRAN = "https://cran.rstudio.com"))
options(stringsAsFactors=FALSE)

q <- function (save="no", ...){
	quit(save=save, ...)
}

.Last <- function(){
	if(interactive()){
		hist_file <- Sys.getenv("R_HISTFILE")
		if (hist_file == "") hist_file <- "~/.RHistory"
		savehistory(hist_file)
	}

}


shhh <- function(a.package){
  suppressWarnings(suppressPackageStartupMessages(
    library(a.package, character.only=TRUE)))
}

# Auto-load packages
auto.loads <- c("stats", "devtools", "tidyverse", "lubridate")

if (interactive()) {
	invisible(sapply(auto.loads, shhh))
	library("colorout")
	setOutputColors256(normal = 39,
			   number = 40,
			   negnum = 160,
			   date = 43,
			   string = 79,
			   const = 75,
			   verbose = FALSE)
}

xdg <- function(path="."){
	system(sprintf("xdg-open %s", path))
}

fix.time <- function(time_field, format.pattern = "%Y-%m-%d %H:%M:%S"){
	return (as.POSIXct(time_field, format=format.pattern))
}

options(tibble.print_min = 20)

