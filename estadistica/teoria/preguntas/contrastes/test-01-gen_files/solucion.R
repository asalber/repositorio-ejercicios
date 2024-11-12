df = data.frame(tiempo = c(3.2 , 3.1 , 2.7 , 4.4 , 3.7 , 3.9 , 2.4 , 3.6 , 3.3 , 2.1 , 1.7 , 2.4 , 1.6 , 1.8 , 2.7 ),
sexo = factor(c(rep("M", 8), rep("H", 7))))

resumen  <- df |> group_by(sexo) |> summarise(media = mean(tiempo), desviacion = sd(tiempo), n = n()) |> print()
sqrt((resumen$desviacion[1]^2*6 + resumen$desviacion[2]^2*7)/ 13)

