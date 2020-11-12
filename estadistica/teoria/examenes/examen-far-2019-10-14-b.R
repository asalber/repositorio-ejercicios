library("knitr")
library("exams")

questions <- c("reglin-far-8-b", "des-med-6-b.Rnw", "des-gen-7-b")

exams2pdf(questions, n=1, name = c("examen-far-2019-10-14-b", "solucion-far-2019-10-14-b"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "ESTADÍSTICA\\\\[2mm] (DESCRIPTIVA Y REGRESIÓN)",
    Degree= "1º Farmacia",
    Date = "14 de octubre de 2019",
    Version = "B",
    Time = "1 hora y 15 minutos"
  ))

# Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
            name = "examen-far-2019-10-14-b", 
            encoding = "UTF-8", 
            type="latex",
            dir = "latex",
            edir = "../preguntas",
            sdir = "img",
            template = c("templates/plain.tex"),
            svg=T
)

pandoc("latex/examen-far-2019-10-14-b1.latex", format="markdown")
