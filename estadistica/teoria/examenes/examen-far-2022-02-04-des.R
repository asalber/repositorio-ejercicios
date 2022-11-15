library("knitr")
library("exams")

setwd("estadistica/teoria/examenes")

questions <- c("des-23-far.Rnw", "reglin-19-med")

exams2pdf(questions, n=1, name = c("examen-far-2022-02-04-des", "solucion-far-2022-02-04-des"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
  Subject = "ESTADÍSTICA\\\\[2mm] (ESTADÍSTICA DESCRIPTIVA Y REGRESIÓN)",
  Degree= "1º Farmacia y Biotecnología",
  Date = "4 de febrero de 2022",
  Version = "A",
  Time = "1 hora"
))

# Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
            name = "examen-far-2022-02-04-des", 
            encoding = "UTF-8", 
            type="latex",
            dir = "latex",
            edir = "../preguntas",
            sdir = "img",
            template = c("templates/plain.tex"),
            svg=T
)

pandoc("latex/examen-far-2022-02-04-des1.latex", format="markdown")
  