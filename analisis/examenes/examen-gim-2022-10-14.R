library("knitr")
library("exams")

setwd("analisis/examenes")

questions <- c("top-1-gen.Rmd", "suc-2-gen.Rmd", "suc-3-eco.Rmd", "lim-4-gen.Rmd", "lim-1-gen.Rmd", "lim-3-gen.Rmd")
degree <- "gim"
date <- "2022-11-14"

exams2pdf(questions,
  n=1,
  name = c(paste0("examen-", degree, "-", date), paste0("solucion-", degree, "-", date )),
  encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu2.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "ANÁLISIS I",
    Degree= "1º Grado en Ingeniería Matemática",
    Date = "14/11/2022",
    Version = "A",
    Time = "2 horas"
  )
)

# Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
             name = paste0("examen-", degree, "-", date), 
             encoding = "UTF-8", 
             type="latex",
             dir = "latex",
             edir = "../preguntas",
             sdir = "img",
             template = c("templates/plain.tex"),
             svg=T
)

pandoc(paste0("latex/examen-", degree, "-", date, "1.latex"), format="markdown")
