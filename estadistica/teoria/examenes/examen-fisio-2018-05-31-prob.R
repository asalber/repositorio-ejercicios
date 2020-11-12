library("knitr")
library("exams")

questions <- c("test-med-1.Rnw", "vac-med-1.Rnw", "prob-fis-1.Rnw", "vad-fis-1.Rnw")
## note that the currency exercise is in UTF-8 encoding


exams2pdf(questions, n=1, name = c("examen-fisio-2018-05-31-prob", "solucion-fisio-2018-05-31-prob"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "ESTADÍSTICA\\\\[2mm] (PROBABILIDAD Y VARIABLES ALEATORIAS)",
    Degree= "2º Fisioterapia",
    Date = "31 de mayo de 2018",
    Version = "A",
    Time = "1 hora y media"
  )
)

# Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
             name = "examen-fisioterapia-2018-05-31-prob", 
             encoding = "UTF-8", 
             type="latex",
             dir = "latex",
             edir = "../preguntas",
             sdir = "img",
             template = c("templates/plain.tex"),
             svg=T
)

pandoc("latex/examen-fisioterapia-2018-05-31-prob1.latex", format="markdown")


