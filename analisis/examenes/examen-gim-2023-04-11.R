library("knitr")
library("exams")

setwd("analisis/examenes")

questions <- c("ser-01-gen.Rmd", "ser-03-ing.Rmd", "ser-02-gen.Rmd", "ser-04-gen.Rmd", "ser-05-gen.Rmd")
degree <- "gim"
date <- "2023-03-11"

exams2pdf(questions,
  n=1,
  name = c(paste0("examen-", degree, "-", date), paste0("solucion-", degree, "-", date)),
  encoding = "UTF-8", 
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Title = "ANÁLISIS",
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
