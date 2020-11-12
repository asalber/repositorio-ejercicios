library("knitr")
library("exams")

questions <- c("regnol-fis-2.Rnw", "des-far-2.Rnw")

exams2pdf(questions, n=1, name = c("examen-far-2018-06-15-des", "solucion-far-2018-06-15-des"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "ESTADÍSTICA\\\\[2mm] (DESCRIPTIVA Y REGRESIÓN)",
    Degree= "1º Farmacia y Biotecnología",
    Date = "15 de junio de 2018",
    Version = "A",
    Time = "1 hora"
  ))

# Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
            name = "examen-opt-2018-06-15-des", 
            encoding = "UTF-8", 
            type="latex",
            dir = "latex",
            edir = "../preguntas",
            sdir = "img",
            template = c("templates/plain.tex"),
            svg=T
)

pandoc("latex/examen-opt-2018-06-15-des1.latex", format="markdown")

