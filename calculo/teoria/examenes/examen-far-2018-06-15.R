library("knitr")
library("exams")

setwd("calculo/teoria/examenes")

questions <- c("edo-far-3.Rnw", "derpar-gen-2.Rnw", "der-gen-1")

exams2pdf(questions, n=1, name = c("examen-far-2021-01-18", "solucion-far-2021-01-18"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "CÁLCULO",
    Degree= "1º Farmacia y Biotecnología",
    Date = "18 de enero de 2021",
    Version = "A",
    Time = "1 hora"
  )
)

# Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
             name = "examen-far-2021-01-18", 
             encoding = "UTF-8", 
             type="latex",
             dir = "latex",
             edir = "../preguntas",
             sdir = "img",
             template = c("templates/plain.tex"),
             svg=T
)

pandoc("latex/examen-far-2021-01-181.latex", format="markdown")


