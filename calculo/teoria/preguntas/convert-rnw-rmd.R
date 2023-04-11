library(mdsr)
setwd("calculo/teoria/preguntas")
files = list.files(".", pattern = "*.Rnw", recursive = T)
for (i in files) {
    newfile <- paste0(strsplit(i, "\\.")[[1]][1],".Rmd")
    Rnw2Rmd(i, newfile)
}
