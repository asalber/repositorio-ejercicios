library("knitr")
library("exams")

questions <- c("des-far-2.Rnw", "reglin-gen-6.Rnw", "regnol-fis-4.Rnw")

exams2pdf(questions, n=1, name = c("examen-fisio-2019-03-26", "solucion-fisio-2019-03-26"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "ESTADÍSTICA",
    Degree= "2º Fisioterapia",
    Date = "26 de marzo de 2019",
    Version = "A",
    Time = "1 hora y 15 minutos"
  ))

# Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
            name = "examen-fisio-2019-03-26", 
            encoding = "UTF-8", 
            type="latex",
            dir = "latex",
            edir = "../preguntas",
            sdir = "img",
            template = c("templates/plain.tex"),
            svg=T
)

pandoc("latex/examen-fisio-2019-03-261.latex", format="markdown")

 