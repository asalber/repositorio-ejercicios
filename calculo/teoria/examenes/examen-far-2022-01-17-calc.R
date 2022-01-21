library("knitr")
library("exams")

setwd("calculo/teoria/examenes")

questions <- c("edo-5-qui", "derpar-4-far", "der-3-bio")

exams2pdf(questions, n=1, name = c("examen-far-2022-01-17-calc", "solucion-far-2022-01-17-calc"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "CÁLCULO",
    Degree= "1º Farmacia y Biotecnología",
    Date = "17 de enero de 2022",
    Version = "A",
    Time = "1 hora"
  )
)

# Borrar directorio de imágenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
             name = "examen-far-2022-01-17-calc", 
             encoding = "UTF-8", 
             type="latex",
             dir = "latex",
             edir = "../preguntas",
             sdir = "img",
             template = c("templates/plain.tex"),
             svg=T
)

pandoc("latex/examen-far-2022-01-17-calc1.latex", format="markdown")


