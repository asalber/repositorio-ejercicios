library("knitr")
library("exams")

questions <- c("prob-med-2.Rnw", "vac-opt-2.Rnw")
## note that the currency exercise is in UTF-8 encoding


exams2pdf(questions, n=1, name = c("examen-far-2018-06-15-prob", "solucion-far-2018-06-15-prob"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "ESTADÍSTICA\\\\[2mm] (PROBABILIDAD Y VARIABLES ALEATORIAS)",
    Degree= "1º Farmacia y Biotecnología",
    Date = "15 de junio de 2018",
    Version = "A",
    Time = "1 hora"
  )
)

# Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
             name = "examen-far-2018-06-15-prob", 
             encoding = "UTF-8", 
             type="latex",
             dir = "latex",
             edir = "../preguntas",
             sdir = "img",
             template = c("templates/plain.tex"),
             svg=T
)

pandoc("latex/examen-far-2018-06-15-prob1.latex", format="markdown")


