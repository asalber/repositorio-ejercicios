library("knitr")
library("exams")

questions <- c("des-med-6", "reglin-far-8")

exams2pdf(questions, n=1, name = c("examen-opt-2019-10-22", "solucion-opt-2019-10-22"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "ESTADÍSTICA\\\\[2mm] (ESTADÍSTICA DESCRIPTIVA Y REGRESIÓN)",
    Degree= "1º Óptica",
    Date = "22 de octubre de 2019",
    Version = "A",
    Time = "1 hora y 15 minutos"
  ))

    # Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
            name = "examen-opt-2019-10-22", 
            encoding = "UTF-8", 
            type="latex",
            dir = "latex",
            edir = "../preguntas",
            sdir = "img",
            template = c("templates/plain.tex"),
            svg=T
)

pandoc("latex/examen-opt-2019-10-221.latex", format="markdown")
