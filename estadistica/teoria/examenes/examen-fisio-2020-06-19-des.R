library("knitr")
library("exams")

setwd("estadistica/teoria/examenes")

questions <- c("des-gen-12.Rnw", "regnol-med-9.Rnw")

exams2pdf(questions, n=1, name = c("examen-fisio-2020-06-19-des", "solucion-fisio-2020-06-19-des"), encoding = "UTF-8",
          dir = "pdf",
          edir = "../preguntas",
          template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
          header = list(
            Subject = "ESTADÍSTICA\\\\[2mm] (DESCRIPTIVA Y REGRESIÓN)",
            Degree= "2º Fisioterapia",
            Date = "19 de junio de 2020",
            Version = "A",
            Time = "1 hora"
          ))

# Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
             name = "examen-fisio-2020-06-19-des", 
             encoding = "UTF-8", 
             type="latex",
             dir = "latex",
             edir = "../preguntas",
             sdir = "img",
             template = c("templates/plain.tex"),
             svg=T
)

    pandoc("latex/examen-fisio-2020-06-19-des1.latex", format="markdown")

