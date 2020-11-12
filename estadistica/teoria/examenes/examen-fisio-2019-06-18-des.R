library("knitr")
library("exams")

questions <- c("des-fis-5.Rnw", "regnol-fis-6.Rnw", "reglin-gen-7.Rnw")

exams2pdf(questions, n=1, name = c("examen-fisio-2019-06-18-des", "solucion-fisio-2019-06-18-des"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "ESTADÍSTICA\\\\[2mm] (DESCRIPTIVA Y REGRESIÓN)",
    Degree= "2º Fisioterapia",
    Date = "18 de junio de 2019",
    Version = "A",
    Time = "1 hora y 15 minutos"
  ))

# Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
            name = "examen-fisio-2019-06-18-des", 
            encoding = "UTF-8", 
            type="latex",
            dir = "latex",
            edir = "../preguntas",
            sdir = "img",
            template = c("templates/plain.tex"),
            svg=T
)

pandoc("latex/examen-fisio-2019-06-18-des1.latex", format="markdown")
