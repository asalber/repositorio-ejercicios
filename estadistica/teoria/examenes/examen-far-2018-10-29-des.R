library("knitr")
library("exams")

questions <- c("reglin-gen-4.Rnw", "des-gen-3.Rnw", "reglin-med-3.Rnw")

exams2pdf(questions, n=1, name = c("examen-far-2018-10-29-des", "solucion-far-2018-10-29-des"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "ESTADÍSTICA\\\\[2mm] (DESCRIPTIVA Y REGRESIÓN)",
    Degree= "1º Farmacia y Biotecnología",
    Date = "29 de octubre de 2018",
    Version = "A",
    Time = "1,5 horas"
  ))

# Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
            name = "examen-far-2018-10-29-des", 
            encoding = "UTF-8", 
            type="latex",
            dir = "latex",
            edir = "../preguntas",
            sdir = "img",
            template = "plantillas/plain.tex",
            svg=T
)

pandoc("latex/examen-far-2018-10-29-des1.latex", format="markdown")

