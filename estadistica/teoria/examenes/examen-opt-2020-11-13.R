library("knitr")
library("exams")

setwd("estadistica/teoria/examenes")

questions <- c("des-gen-15", "reglin-opt-12")

data.reglin.opt.12 <- read.csv('../preguntas/regresion-lineal/datos-opt-12.csv')

exams2pdf(questions, n=1, name = c("examen-opt-2020-11-13", "solucion-opt-2020-11-13"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
  template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
  header = list(
    Subject = "ESTADÍSTICA\\\\[2mm] (DESCRIPTIVA Y REGRESIÓN)",
    Degree= "1º Óptica",
    Date = "13 de noviembre de 2020",
    Version = "A",
    Time = "1 hora"
  ))

# Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
            name = "examen-opt-2020-11-13", 
            encoding = "UTF-8", 
            type="latex",
            dir = "latex",
            edir = "../preguntas",
            sdir = "img",
            template = c("templates/plain.tex"),
            svg=T
)

pandoc("latex/examen-opt-2020-11-131.latex", format="markdown")
