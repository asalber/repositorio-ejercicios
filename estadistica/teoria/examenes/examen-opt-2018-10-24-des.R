library("knitr")
library("exams")

questions <- c("reglin-opt-5.Rnw")

exams2pdf(questions, n=1, name = c("examen-opt-2018-10-24-des", "solucion-opt-2018-10-24-des"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "ESTADÍSTICA\\\\[2mm] (DESCRIPTIVA Y REGRESIÓN)",
    Degree= "1º Óptica",
    Date = "24 de octubre de 2018",
    Version = "A",
    Time = "1 hora y 15 min"
  ))

# Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
            name = "examen-opt-2018-10-24-des", 
            encoding = "UTF-8", 
            type="latex",
            dir = "latex",
            edir = "../preguntas",
            sdir = "img",
            template = "plantillas/plain.tex",
            svg=T
)

pandoc("latex/examen-opt-2018-10-24-des1.latex", format="markdown")

