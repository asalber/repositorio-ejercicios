library("knitr")
library("exams")

setwd("analisis/examenes")

questions <- c("tay-01-gen.Rmd", "cont-01-gen.Rmd", "ext-01-qui.Rmd", "der-01-gen.Rmd", "imp-01-gen.Rmd")
degree <- "gim"
date <- "2022-12-21"

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
    Date = "21/12/2022",
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
