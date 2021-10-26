library("knitr")
library("exams")

setwd("calculo/teoria/examenes")

questions <- c("tri-gen-1", "der-far-2", "edo-far-4")

exams2pdf(questions, n=1, name = c("examen-opt-2021-02-08", "solucion-opt-2021-02-08"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "CÁLCULO",
    Degree= "1º Óptica",
    Date = "8 de febrero de 2021",
    Version = "A",
    Time = "1 hora"
  )
)

# Borrar directorio de imágenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
             name = "examen-opt-2021-02-08", 
             encoding = "UTF-8", 
             type="latex",
             dir = "latex",
             edir = "../preguntas",
             sdir = "img",
             template = c("templates/plain.tex"),
             svg=T
)

pandoc("latex/examen-opt-2021-02-081.latex", format="markdown")


