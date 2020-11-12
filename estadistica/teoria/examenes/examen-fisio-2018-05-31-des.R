library("knitr")
library("exams")

questions <- c("des-fis-1.Rnw", "regnol-fis-1.Rnw")

exams2pdf(questions, n=1, name = c("examen-fisio-2018-05-31-des", "solucion-fisio-2018-05-31-des"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "ESTADÍSTICA\\\\[2mm] (DESCRIPTIVA Y REGRESIÓN)",
    Degree= "2º Fisioterapia",
    Date = "31 de mayo de 2018",
    Version = "A",
    Time = "1 hora y media"
  ))

# Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
            name = "examen-fisioterapia-2018-05-31-des", 
            encoding = "UTF-8", 
            type="latex",
            dir = "latex",
            edir = "../preguntas",
            sdir = "img",
            template = c("templates/plain.tex"),
            svg=T
)

pandoc("latex/examen-fisioterapia-2018-05-31-des1.latex", format="markdown")

