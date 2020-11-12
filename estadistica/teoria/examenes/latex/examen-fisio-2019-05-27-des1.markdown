1.  **Question**\
    Para ver como influye el tabaco en el peso de los recién nacidos se
    tomó una muestra de madres que fumaron durante el embarazo y se
    observó el número de cigarros diarios que fumaban ($X$) y el peso
    del recién nacido (todos los recien nacidos fueron niños) ($Y$).
    $$% latex table generated in R 3.6.0 by xtable 1.8-4 package
      % Thu Jun 13 11:58:24 2019
      \begin{array}{lrrrrrrrrrrrr}
         \hline
      \mbox{Num cigarros diarios} & 10.00 & 14.00 & 8.00 & 11.00 & 7.00 & 6.00 & 2.00 & 5.00 & 9.00 & 9.00 & 4.00 & 6.00 \\ 
        \mbox{Peso (kg)} & 2.55 & 2.44 & 2.68 & 2.65 & 2.71 & 2.85 & 3.45 & 2.93 & 2.67 & 2.59 & 3.02 & 2.72 \\ 
         \hline
      \end{array}$$

    1.  Construir la recta de regresión del número de cigarros sobre el
        peso del recién nacido e interpretar la pendiente.

    2.  ¿Qué modelo de regresión es mejor para predecir el peso en
        función del número de cigarros, el logarítmico o el exponencial?

    3.  Utilizar el mejor de los dos modelos anteriores para predecir el
        peso de un recién nacido cuya madre ha fumado 12 cigarros al
        día. ¿Es fiable la predicción?

    Usar las siguientes sumas para los cálculos:\
    $\sum x_i=91$ cigarros, $\sum \log(x_i)=23.0317$
    $\log(\mbox{cigarros})$, $\sum y_j=33.26$ kg,
    $\sum \log(y_j)=12.1857$ $\log(\mbox{kg})$,\
    $\sum x_i^2=809$ cigarros$^2$, $\sum \log(x_i)^2=47.196$
    $\log(\mbox{cigarros})^2$, $\sum y_j^2=92.9708$ kg$^2$,
    $\sum \log(y_j)^2=12.4665$ $\log(\mbox{kg})^2$,\
    $\sum x_iy_j=243.61$ cigarros$\cdot$kg, $\sum x_i\log(y_j)=89.3984$
    cigarros$\cdot\log(\mbox{kg})$, $\sum \log(x_i)y_j=62.3428$
    $\log(\mbox{cigarros})$kg, $\sum \log(x_i)\log(y_j)=22.8753$
    $\log(\mbox{cigarros})\log(\mbox{kg})$.

    **Solution**\

2.  **Question**\
    En una prueba de fondo en Madrid, los corredores tardaron en llegar
    a la meta el tiempo que se indica:

    $$% latex table generated in R 3.6.0 by xtable 1.8-4 package
      % Thu Jun 13 11:58:24 2019
      \begin{array}{lr}
       \mbox{Tiempo (min)} & \mbox{Num corredores} \\ 
        \hline
      (30,35] & 15 \\ 
        (35,40] & 35 \\ 
        (40,45] & 40 \\ 
        (45,50] & 10 \\ 
         \hline
      \end{array}$$

    En otra carrera similar en París, el tiempo medio empleado en
    recorrerla fue de 40 minutos, la desviación típica 5 minutos y el
    coeficiente de asimetría $0.75$.

    Se pide:

    1.  ¿Qué porcentaje de corredores tardaron menos de 42 minutos en la
        carrera de Madrid?

    2.  Calcular el rango intercuartílico del tiempo empleado en la
        carrera de Madrid.

    3.  ¿En qué carrera resulta más representativa la media del tiempo
        empleado?

    4.  ¿Cuál de las dos carreras tienen una distribución del tiempo más
        simétrica?

    5.  ¿En qué prueba un tiempo de 39 minutos es relativamente menor?

    Usar las siguientes sumas para los cálculos: $\sum x_i=3975$ min,
    $\sum x_i^2=159875$ min$^2$, $\sum (x_i-\bar x)^3=-628.12$ min$^3$ y
    $\sum (x_i-\bar x)^4=80701.95$ min$^4$.

    **Solution**\


