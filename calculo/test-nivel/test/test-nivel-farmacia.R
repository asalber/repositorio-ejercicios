library("exams")
set.seed(123)
setwd("calculo/test-nivel/test")

questions <- c("der-01.Rmd")

# Pdf
exams2pdf(questions, n=1, name = c("test-farmacia", "sol-test-farmacia"), encoding = "UTF-8",
  dir = "pdf",
  edir = "../preguntas",
)

# HTML
exams2html(preguntas, mathjax = TRUE)
