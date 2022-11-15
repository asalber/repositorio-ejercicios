library("knitr")
library("exams")

setwd("estadistica/teoria/examenes")
examen <- "2022-06-6-prob"

questions <- c("test-12-fis.Rnw", "vad-18-med.Rnw", "vac-21-fis.Rnw")

exams2pdf(questions, n=1, name = c(paste0("examen-fisio-", examen), paste0("solucion-fisio-", examen)), encoding = "UTF-8",
          dir = "pdf",
          edir = "../preguntas",
          template = c("plantillas/examenceu.tex", "plantillas/solucionceu.tex"),
          header = list(
            Subject = "PROBABILIDAD Y VARIABLES ALEATORIAS",
            Degree= "2º Fisioterapia",
            Date = "6 de junio de 2022",
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