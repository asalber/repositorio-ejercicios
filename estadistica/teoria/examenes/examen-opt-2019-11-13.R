library("knitr")
library("exams")

setwd("estadistica/teoria/examenes")

questions <- c("prob-gen-10", "test-opt-5", "vad-med-11", "vac-med-12")

exams2pdf(questions, n=1, name = c("examen-opt-2020-12-21", "solucion-opt-2020-12-21"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "ESTADÍSTICA\\\\[2mm] (PROBABILIDAD Y VARIABLES ALEATORIAS)",
    Degree= "1º Óptica",
    Date = "21 de diciembre de 2020",
    Version = "A",
    Time = "1 hora"
))

  # Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
            name = "examen-opt-2020-12-21", 
            encoding = "UTF-8", 
            type="latex",
            dir = "latex",
            edir = "../preguntas",
            sdir = "img",
            template = c("templates/plain.tex"),
            svg=T
)

pandoc("latex/examen-opt-2020-12-211.latex", format="markdown")
