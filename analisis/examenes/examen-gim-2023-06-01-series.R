library("knitr")
library("exams")

setwd("analisis/examenes")

questions <- c("ser-06-gen.Rmd", "ser-07-gen.Rmd", "ser-08-gen.Rmd", "ser-09-gen.Rmd")
degree <- "gim"
date <- "2023-06-01"

exams2pdf(questions,
  n=1,
  name = c(paste0("examen-", degree, "-", date, "-series"), paste0("solucion-", degree, "-", date, "-series")),
  encoding = "UTF-8", 
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Title = "ANÁLISIS (Series)",
    Subject = "ANÁLISIS II",
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
