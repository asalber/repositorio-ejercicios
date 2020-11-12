1.  **Question**\
    Para ver si la situación de confinamiento debida al COVID19 ha
    influído en el rendimiento de un curso, se ha contado el número de
    asignaturas suspensas de cada alumno en el curso actual y en el
    curso anterior, obteniendo la siguiente tabla:

    $$% latex table generated in R 4.0.1 by xtable 1.8-4 package
      % Thu Jun 18 08:39:11 2020
      \begin{array}{crr}
       \mbox{Asignaturas suspensas} & \mbox{Curso anterior} & \mbox{Curso actual} \\ 
        \hline
      0 & 7 & 8 \\ 
        1 & 15 & 12 \\ 
        2 & 11 & 8 \\ 
        3 & 5 & 7 \\ 
        4 & 4 & 3 \\ 
        5 & 2 & 2 \\ 
        6 & 1 & 2 \\ 
        8 & 0 & 1 \\ 
         \hline
      \end{array}$$

    Se pide:

    1.  Dibujar los diagramas de cajas del número de asignaturas
        suspensas en el curso actual y en el anterior y compararlos.

    2.  ¿Se puede asumir que ambas muestras, la del curso actual y la
        del anterior, provienen de poblaciones normales?

    3.  ¿En qué muestra es más representativa la media?

    4.  ¿Qué número de asignaturas suspensas es mayor, 7 asignaturas en
        el curso actual, o 6 en el curso anterior?

    Usar las siguientes sumas para los cálculos:\
    Curso anterior: $\sum x_in_i=84$, $\sum x_i^2n_i=254$,
    $\sum (x_i-\bar x)^3n_i=122.99$ y $\sum (x_i-\bar x)^4n_i=669.21$.\
    Curso actual: $\sum y_in_i=91$, $\sum y_i^2n_i=341$,
    $\sum (y_i-\bar y)^3n_i=301.16$ y $\sum (y_i-\bar y)^4n_i=2012.88$.

    **Solution**\

    1.  Han aprobado el 66.5% de los estudiantes no trabajadores y el
        59% de los trabajadores.

    2.  No trabajadores: $\bar x=1.8667$, $s^2=2.16$, $s=1.4697$ y
        $cv=0.7873$.\
        Trabajadores: $\bar y=2.1163$, $s^2=3.4516$, $s=1.8578$ y
        $cv=0.8779$.\
        La muestra de los alumnos que no trabajan tiene una dispersión
        relativa con respecto a la media ligeramente mayor ya que su
        coeficiente de variación es mayor.

    3.  No trabajadores: $g_1=0.8609$.\
        Trabajadores: $g_1=1.0922$.\
        Así pues, la muestra de los alumnos que no trabajan es más
        asimétrica ya que su coeficiente de asimetría está más lejos
        de 0.

    4.  No trabajadores: $\bar y=3.2067$.\
        Trabajadores: $\bar x=3.5686$.\
        El coeficiente de asimetría no cambia al ser la pendiente de la
        transformación positiva.\

    5.  No trabajadores: $z(7)=3.4928$.\
        Trabajadores: $z(6)=2.0904$.\
        Así pues, un 7 en la muestra de alumnos que no trabajan es
        relativamente mayor que un 6 en la muestra de alumnos que
        trabajan.
