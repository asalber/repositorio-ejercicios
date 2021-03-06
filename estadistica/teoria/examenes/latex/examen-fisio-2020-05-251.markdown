1.  **Question**\
    En un grupo de 150 estudiantes de los cuales 50 son trabajadores, se
    ha registrado la nota obtenida en el examen de una cierta
    asignatura, obteniendo las siguientes distribuciones:

    $$% latex table generated in R 4.0.0 by xtable 1.8-4 package
      % Sun May 24 22:22:42 2020
      \begin{array}{crr}
       \mbox{Nota} & \mbox{Estudiantes no trabajadores} & \mbox{Estudiantes trabajadores} \\ 
        \hline
      0-2 & 8 & 2 \\ 
        2-4 & 15 & 9 \\ 
        4-6 & 25 & 19 \\ 
        6-8 & 38 & 11 \\ 
        8-10 & 14 & 9 \\ 
         \hline
      \end{array}$$

    Se pide:

    1.  Teniendo en cuenta que para poder aprobar hay que sacar una nota
        superior a 5 ¿Qué porcentaje de alumnos ha aprobado entre los
        estudiantes no trabajadores? ¿Y entre los trabajadores?

    2.  ¿Cuál de las dos muestras presenta una dispersión relativa de
        las notas mayor?

    3.  ¿Qué muestra es más asimétrica: la de los estudiantes
        trabajadores o la de los que no son trabajadores?

    4.  Para optar a una beca para ir al extranjero se necesita
        transformar la nota según la siguiente transformación linear
        $Y=0.5 + x * 1.45$. ¿Cuál será la nueva nota media para los dos
        grupos? ¿Y cómo varía la asimetría de las dos distribuciones?

    5.  ¿Qué nota es relativamente mayor un 7 en estudiantes no
        trabajadores o un 6 en estudiantes trabajadores?

    Usar las siguientes sumas para los cálculos:\
    Estudiantes no trabajadores: $\sum x_in_i=570$,
    $\sum x_i^2n_i=3764$$^2$, $\sum (x_i-\bar x)^3n_i=-547.8$$^3$ y
    $\sum (x_i-\bar x)^4n_i=6475.73$$^4$.\
    Estudiantes trabajadores: $\sum y_in_i=282$,
    $\sum y_i^2n_i=1826$$^2$, $\sum (y_i-\bar y)^3n_i=-1.31$$^3$ y
    $\sum (y_i-\bar y)^4n_i=2552.14$$^4$.

    **Solution**\

2.  **Question**\
    En un grupo de pacientes se analiza el efecto de una sustancia
    dopante en el tiempo de respuesta a un determinado estímulo. Para
    ello, se suministra en sucesivas dosis, de 10 a 80 mg, la misma
    cantidad de dopante a todos los miembros del grupo, y se anota el
    tiempo medio de respuesta al estímulo, expresado en centésimas de
    segundo.
    $$% latex table generated in R 4.0.0 by xtable 1.8-4 package
      % Sun May 24 22:22:42 2020
      \begin{array}{lrrrrrrrr}
         \hline
      \mbox{Dosis (mg)} & 10 & 20 & 30 & 40 & 50 & 60 & 70 & 80 \\ 
        \mbox{Tiempo ($10^{-2}$ s)} & 28 & 46 & 62 & 81 & 100 & 132 & 195 & 302 \\ 
         \hline
      \end{array}$$

    1.  Según el modelo de regresión lineal, ¿cuánto aumentará o
        disminuirá el tiempo de respuesta por cada mg más que aumentemos
        la dosis?

    2.  Según el modelo de regresión exponencial, ¿qué tiempo de
        respuesta se espera para una dosis de 75 mg? ¿Es fiable la
        predicción?

    3.  Si para el estímulo estudiado los tiempos de reacción superiores
        a un segundo se consideran peligrosos para la salud, ¿a partir
        de qué nivel debería regularse, e incluso prohibirse, la
        administración de la sustancia dopante según el modelo
        logarítmico?

    Usar las siguientes sumas para los cálculos:\
    $\sum x_i=360$ mg, $\sum \log(x_i)=29.0253$ $\log(\mbox{mg})$,
    $\sum y_j=946$ $10^{-2}$ s, $\sum \log(y_j)=36.1538$
    $\log(\mbox{$10^{-2}$ s})$,\
    $\sum x_i^2=20400$ mg$^2$, $\sum \log(x_i)^2=108.7717$
    $\log(\mbox{mg})^2$, $\sum y_j^2=169958$ $10^{-2}$ s$^2$,
    $\sum \log(y_j)^2=167.5694$ $\log(\mbox{$10^{-2}$ s})^2$,\
    $\sum x_iy_j=57030$ mg$\cdot$$10^{-2}$ s,
    $\sum x_i\log(y_j)=1758.6576$ mg$\cdot\log(\mbox{$10^{-2}$ s})$,
    $\sum \log(x_i)y_j=3795.4339$ $\log(\mbox{mg})$$10^{-2}$ s,
    $\sum \log(x_i)\log(y_j)=134.823$
    $\log(\mbox{mg})\log(\mbox{$10^{-2}$ s})$.

    **Solution**\
