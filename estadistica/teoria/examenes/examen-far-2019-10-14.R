library("knitr")
library("exams")

questions <- c("des-med-6.Rnw", "des-gen-7", "reglin-far-8")

exams2pdf(questions, n=1, name = c("examen-far-2019-10-14", "solucion-far-2019-10-14"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "ESTADÍSTICA\\\\[2mm] (DESCRIPTIVA Y REGRESIÓN)",
    Degree= "1º Farmacia",
    Date = "14 de octubre de 2019",
    Version = "A",
    Time = "1 hora y 15 minutos"
  ))

# Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
            name = "examen-far-2019-10-14", 
            encoding = "UTF-8", 
            type="latex",
            dir = "latex",
            edir = "../preguntas",
            sdir = "img",
            template = c("templates/plain.tex"),
            svg=T
)

pandoc("latex/examen-far-2019-10-141.latex", format="markdown")
