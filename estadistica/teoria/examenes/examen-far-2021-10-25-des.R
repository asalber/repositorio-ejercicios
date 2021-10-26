library("knitr")
library("exams")

setwd("estadistica/teoria/examenes")

questions <- c("des-21-nut", "reglin-17-bio", "reglin-16-nut")

exams2pdf(questions, n=1, name = c("examen-far-2021-10-25-des", "solucion-far-2021-10-25-des"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
  Subject = "ESTADÍSTICA\\\\[2mm] (ESTADÍSTICA DESCRIPTIVA Y REGRESIÓN)",
  Degree= "1º Farmacia y Biotecnología",
  Date = "25 de octubre de 2021",
  Version = "A",
  Time = "1 hora"
))

# Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
            name = "examen-far-2021-10-25-des", 
            encoding = "UTF-8", 
            type="latex",
            dir = "latex",
            edir = "../preguntas",
            sdir = "img",
            template = c("templates/plain.tex"),
            svg=T
)

pandoc("latex/examen-far-2021-10-25-des1.latex", format="markdown")
  