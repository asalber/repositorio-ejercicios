1.  **Question**\
    Un laboratorio está ensayando tres analgésicos diferentes y se
    quiere determinar si existe relación entre los tiempos que tardan en
    hacer efecto en un paciente. Para ello, realizan una prueba
    administrando los diferentes analgésicos a un grupo de 25 pacientes
    evaluando el tiempo que tarda en hacer efecto cada analgésico,
    denominándolos $X$, $Y$ y $Z$ a cada uno de los tiempos,
    obteniéndose los siguientes datos:

    $\sum x_i=835$ min, $\sum y_i=1069$ min, $\sum z_i=1832$ min,\
    $\sum x_i^2=31320$ min$^2$, $\sum y_i^2=52701$ min$^2$,
    $\sum z_i^2=154880$ min$^2$,\
    $\sum x_iy_j=39402$ min$^2$, $\sum y_jz_j=68619$ min$^2$.

    Se pide:

    1.  ¿Existe relación lineal entre los tiempos $X$ e $Y$? ¿Y entre
        los tiempos $Y$ y $Z$?

    2.  Según un modelo lineal, ¿cuánto aumentaría el tiempo $X$ por
        cada minuto que aumente el tiempo $Y$?

    3.  Si deseamos realizar una predicción del tiempo $Y$ mediante un
        modelo lineal, ¿Cuál de los dos tiempos $X$ o $Z$ sería el más
        adecuado? ¿Por qué?

    4.  Predecir según el mejor modelo lineal elegido en el apartado
        anterior el valor del tiempo $Y$ para un valor del tiempo $X$ o
        $Z$, según el modelo elegido, de 40 minutos.

    5.  Si el coeficiente de correlación lineal entre los tiempos $X$ y
        $Z$ es $r=-0.6$, ¿Cuál es el modelo lineal que explica el tiempo
        $X$ en función del tiempo $Z$?

    **Solution**\

2.  **Question**\
    Se ha medido la tensión arterial sistólica (en mmHg) en dos grupos
    de 50 personas cada uno de dos poblaciones $A$ y $B$, obteniendo los
    siguientes resultados:

    $$% latex table generated in R 3.6.1 by xtable 1.8-4 package
      % Mon Oct 14 11:41:53 2019
      \begin{array}{lrr}
       \mbox{Tensión sistólica} & \mbox{Num personas $A$} & \mbox{Num personas $B$} \\ 
        \hline
      (70,80] & 2 & 3 \\ 
        (80, 90] & 5 & 9 \\ 
        (90, 100] & 14 & 14 \\ 
        (100, 110] & 12 & 13 \\ 
        (110, 120] & 8 & 5 \\ 
        (120, 130] & 5 & 3 \\ 
        (130, 140] & 3 & 2 \\ 
        (140, 150] & 1 & 1 \\ 
         \hline
      \end{array}$$

    Se pide:

    1.  ¿En cuál de los dos grupos hay una mayor dispersión relativa con
        respecto a la media de la tensión sistólica?

    2.  ¿Por debajo de qué tensión sistólica se encuentra el 40% de las
        personas del grupo de la población $B$?

    3.  ¿Cuál de las dos distribuciones de la tensión sistólica es más
        asimétrica? ¿Cuál es menos apuntada? ¿Pueden provenir estas
        muestras de poblaciones normales?

    4.  ¿Qué tensión sistólica es relativamente más alta, 122 mmHg en el
        grupo de la población $A$, o 120 mmHg en el grupo de la
        población $B$?

    5.  Si a las 50 personas de la población $B$ se les mide la tensión
        sistólica con otro tensiómetro, y la tensión obtenida ($Y$) está
        relacionada con la del primer tensiómetro ($X$) mediante la
        ecuación $y=1.05x-1.2$, ¿en cuál de las dos tensiones $X$ o $Y$
        es más representativa la media? Justificar la respuesta.

    Usar las siguientes sumas para los cálculos.\
    Grupo $A$: $\sum x_in_i=5760$ mmHg, $\sum x_i^2n_i=675850$ mmHg$^2$,
    $\sum (x_i-\bar x)^3n_i=77620.8$ mmHg$^3$ y
    $\sum (x_i-\bar x)^4n_i=8364951.76$ mmHg$^4$.\
    Grupo $B$: $\sum x_in_i=5550$ mmHg, $\sum x_i^2n_i=628050$ mmHg$^2$,
    $\sum (x_i-\bar x)^3n_i=127200$ mmHg$^3$ y
    $\sum (x_i-\bar x)^4n_i=9590400$ mmHg$^4$.

    **Solution**\

    1.  Sean $x$ e $y$ las tensiones sistólicas de las poblaciones $A$ y
        $B$ respectivamente.\
        $g_{1x}=0.4024$ y $g_{1y}=0.6842$, de manera que la distribución
        del grupo de la población $A$ es más asimétrica ya que el
        coeficiente de $g_1$ está más lejos de 0.

    2.  $g_{2x}=-0.2346$ y $g_{2y}=0.33$, de manera que la distribución
        del grupo de la población $A$ es más apuntada que la de la
        población $B$ ya que $g_{2x}>g_{2y}$.

    3.  $\bar x=115.2$ mmHg, $s_x^2=245.96$ mmHg$^2$, $s_x=15.6831$ mmHg
        and $cv_x=0.1361$.\
        $\bar y=111$ mmHg, $s_y^2=240$ mmHg$^2$, $s_y=15.4919$ mmHg y
        $cv_y=0.1396$.\
        La media es más representativa en el grupo de la población $A$
        ya que el coeficiente de variación es menor.

    4.  $g_{1x}=0.4024$ y $g_{1y}=0.6842$, de manera que la distribución
        de edades de los pacientes menores de 65 es menos simétrica.

    5.  Las puntuaciones típicas son $z_x(132)=1.0712$ y
        $z_y(130)=1.2264$, de manera que 132 mmHg es relativamente menor
        en el grupo de la población $A$ ya que su puntación típica es
        menor.

3.  **Question**\
    Se sabe que en una distribución de frecuencias simétrica la media
    vale 20, el primer cuartil vale 15 y el mínimo valor es 2. Se pide:

    1.  Dibujar el diagrama de caja y bigotes.

    2.  ¿Podría considerarse como atípico en esta distribución un valor
        de 39?

    **Solution**\

    1.  Diagrama de cajas

    2.  Si porque la valla inferior es $v_1=3$.
