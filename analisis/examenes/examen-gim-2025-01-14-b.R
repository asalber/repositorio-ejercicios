library("knitr")
library("exams")

setwd("analisis/examenes")

degree <- "gim"
date <- "2025-01-14"
questions <- c("imp-02-far.Rmd", "der-04-fis.Rmd", "tay-04-gen.Rmd", "cont-05-gen.Rmd")

exams2pdf(questions,
  n=1,
  name = c(paste0("examen-", degree, "-", date, "-b"), paste0("solucion-", degree, "-", date, "-b")),
  encoding = "UTF-8", 
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Title = "EXAMEN DE ANÁLISIS (2ª PARTE)",
    Subject = "ANÁLISIS I",
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
