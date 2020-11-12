library("knitr")
library("exams")

setwd("estadistica/teoria/examenes")

questions <- c("vad-gen-7", "test-med-3", "vac-gen-7","prob-far-6")

exams2pdf(questions, n=1, name = c("examen-far-2019-11-18", "solucion-far-2019-11-18"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "ESTADÍSTICA\\\\[2mm] (PROBABILIDAD Y VARIABLES ALEATORIAS)",
    Degree= "1º Farmacia y Biotecnología",
    Date = "18 de noviembre de 2019",
    Version = "B",
    Time = "1 hora y 15 minutos"
  ))

    # Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
            name = "examen-far-2019-11-18", 
            encoding = "UTF-8", 
            type="latex",
            dir = "latex",
            edir = "../preguntas",
            sdir = "img",
            template = c("templates/plain.tex"),
            svg=T
)

pandoc("latex/examen-far-2019-11-181.latex", format="markdown")
