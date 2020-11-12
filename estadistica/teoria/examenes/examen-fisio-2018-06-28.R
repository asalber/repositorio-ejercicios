library("knitr")
library("exams")

questions <- c("des-far-2.Rnw", "regnol-fis-3.Rnw", "prob-fis-3.Rnw", "vad-fis-2.Rnw", "vac-fis-3.Rnw")

exams2pdf(questions, n=1, name = c("examen-fisio-2018-06-28", "solucion-fisio-2018-06-28"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "ESTADÍSTICA",
    Degree= "2º Fisioterapia",
    Date = "28 de junio de 2018",
    Version = "A",
    Time = "2 horas"
  ))

# Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
            name = "examen-fisio-2018-06-28", 
            encoding = "UTF-8", 
            type="latex",
            dir = "latex",
            edir = "../preguntas",
            sdir = "img",
            template = c("templates/plain.tex"),
            svg=T
)

pandoc("latex/examen-fisio-2018-06-281.latex", format="markdown")

 