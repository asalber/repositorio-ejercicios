library("knitr")
library("exams")

setwd("estadistica/teoria/examenes")

questions <- c("test-med-4", "vad-med-11", "vac-med-11", "prob-med-9")

exams2pdf(questions, n=1, name = c("examen-far-2020-11-23", "solucion-far-2020-11-23"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "ESTADÍSTICA\\\\[2mm] (PROBABILIDAD Y VARIABLES ALEATORIAS)",
    Degree= "1º Farmacia y Biotecnología",
    Date = "23 de noviembre de 2020",
    Version = "A",
    Time = "1 hora"
  ))

# Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
            name = "examen-far-2020-11-23", 
            encoding = "UTF-8", 
            type="latex",
            dir = "latex",
            edir = "../preguntas",
            sdir = "img",
            template = c("templates/plain.tex"),
            svg=T
)

pandoc("latex/examen-far-2020-11-231.latex", format="markdown")
