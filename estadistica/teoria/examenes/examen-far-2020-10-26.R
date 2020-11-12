library("knitr")
library("exams")

setwd("estadistica/teoria/examenes")

questions <- c("des-med-13", "des-gen-14", "reglin-far-11")

exams2pdf(questions, n=1, name = c("examen-far-2020-11-17", "solucion-far-2020-11-17"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "ESTADÍSTICA\\\\[2mm] (DESCRIPTIVA Y REGRESIÓN)",
    Degree= "1º Farmacia",
    Date = "17 de noviembre de 2020",
    Version = "A",
    Time = "1 hora"
  ))

# Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
            name = "examen-far-2020-11-17", 
            encoding = "UTF-8", 
            type="latex",
            dir = "latex",
            edir = "../preguntas",
            sdir = "img",
            template = c("templates/plain.tex"),
            svg=T
)

pandoc("latex/examen-far-2020-11-171.latex", format="markdown")
