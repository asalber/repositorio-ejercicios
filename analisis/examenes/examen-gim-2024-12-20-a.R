library("knitr")
library("exams")

setwd("analisis/examenes")

degree <- "gim"
date <- "2024-12-20"
questions <- c("extn-02-fis.Rmd", "funvec-05-ing.Rmd", "impn-01-geo.Rmd")

exams2pdf(questions,
  n=1,
  name = c(paste0("examen-", degree, "-", date, "-a"), paste0("solucion-", degree, "-", date, "-b")),
  encoding = "UTF-8", 
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Title = "EXAMEN DE ANÁLISIS (1ª PARTE)",
    Subject = "ANÁLISIS III",
    Degree= "Grado en Ingeniería Matemática",
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
