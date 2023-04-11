library("knitr")
library("exams")

setwd("analisis/examenes")

questions <- c("der-03-ind.Rmd", "tay-02-gen.Rmd", "ext-02-eco.Rmd", "cont-02-gen.Rmd")
degree <- "gim"
date <- "2023-01-26"

exams2pdf(questions,
  n=1,
  name = c(paste0("examen-", degree, "-", date, "-b"), paste0("solucion-", degree, "-", date, "-b" )),
  encoding = "UTF-8", 
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu2.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "ANÁLISIS I",
    Degree= "1º Grado en Ingeniería Matemática",
    Date = date,
    Version = "A",
    Time = "1 hora y 15 minutos"
  )
)

# Borrar directorio de imágenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
             name = paste0("examen-", degree, "-", date, "-b"), 
             encoding = "UTF-8", 
             type="latex",
             dir = "latex",
             edir = "../preguntas",
             sdir = "img",
             template = c("templates/plain.tex"),
             svg=T
)

pandoc(paste0("latex/examen-", degree, "-", date, "-b1.latex"), format="markdown")
