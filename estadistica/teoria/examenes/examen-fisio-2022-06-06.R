library("knitr")
library("exams")

setwd("estadistica/teoria/examenes")
examen <- "2022-06-6-prob"

questions <- c("")

exams2pdf(questions, n=1, name = c(paste0("examen-fisio-", examen), paste0("solucion-fisio-", examen)), encoding = "UTF-8",
          dir = "pdf",
          edir = "../preguntas",
          template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
          header = list(
            Subject = "PROBABILIDAD Y VARIABLES ALEATORIAS",
            Degree= "2º Fisioterapia",
            Date = "30 de mayo de 2023",
            Version = "A",
            Time = "1 hora"
          ))

# Borrar directorio de imagenes del examen
unlink("img/exam1", recursive = TRUE) 
exams2pandoc(questions, n=1, 
             name = paste0("examen-fisio-", examen), 
             encoding = "UTF-8", 
             type="latex",
             dir = "latex",
             edir = "../preguntas",
             sdir = "img",
             template = c("templates/plain.tex"),
             svg=T
)

pandoc(paste0("latex/examen-fisio-", examen, "1.latex"), format="markdown")