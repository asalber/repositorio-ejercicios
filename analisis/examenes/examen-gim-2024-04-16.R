library("knitr")
library("exams")

setwd("analisis/examenes")

degree <- "gim"
date <- "2024-04-16"
questions <- c("sumrie-02-gen.Rmd", "int-09-gen.Rmd", "int-07-gen.Rmd", "int-10-gen.Rmd")

exams2pdf(questions,
  n=1,
  name = c(paste0("examen-", degree, "-", date), paste0("solucion-", degree, "-", date)),
  encoding = "UTF-8", 
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Title = "EXAMEN DE ANÁLISIS",
    Subject = "ANÁLISIS II",
    Degree= "1º Grado en Ingeniería Matemática",
    Date = date,
    Version = "A",
    Time = "1 hora y 30 minutos"
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
