library("knitr")
library("exams")

questions <- c("regnol-med-5.Rnw", "des-fis-4.Rnw")

exams2pdf(questions, n=1, name = c("examen-fisio-2019-05-27-des", "solucion-fisio-2019-05-27-des"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "ESTADÍSTICA\\\\[2mm] (DESCRIPTIVA Y REGRESIÓN)",
    Degree= "2º Fisioterapia",
    Date = "27 de mayo de 2019",
    Version = "A",
    Time = "1 hora y 15 minutos"
  ))

# Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
            name = "examen-fisio-2019-05-27-des", 
            encoding = "UTF-8", 
            type="latex",
            dir = "latex",
            edir = "../preguntas",
            sdir = "img",
            template = c("templates/plain.tex"),
            svg=T
)

pandoc("latex/examen-fisio-2019-05-27-des1.latex", format="markdown")

 