1.  **Question**\
    En un estudio sobre la presbicia se tomó una muestra de pacientes y
    se midió la edad y la distancia mínima a la que eran capaces de leer
    una frase en cm. Los datos se muestran en la siguiente tabla.

    $$% latex table generated in R 3.5.1 by xtable 1.8-3 package
      % Tue Oct 30 15:17:36 2018
      \begin{array}{lrrrrrrrrrrrrrrrrrrrr}
         \hline
      \mbox{Edad} & 7 & 12 & 15 & 15 & 18 & 21 & 25 & 28 & 32 & 35 & 43 & 46 & 48 & 51 & 54 & 57 & 60 & 66 & 72 & 92 \\ 
        \mbox{Distancia} & 13 & 14 & 12 & 14 & 13 & 14 & 13 & 14 & 16 & 13 & 18 & 19 & 22 & 22 & 26 & 25 & 27 & 28 & 29 & 36 \\ 
         \hline
      \end{array}$$

    Utilizar las siguientes sumas para los cálculos ($X$= Edad e $Y$=
    Distancia mínima de enfoque):

    **Menores de 40**\
    $\sum x_i=208$, $\sum x_i^2=5066$, $\sum(x_i-\bar x)^3=993.84$,
    $\sum(x_i-\bar x)^4=103981.55$\
    $\sum y_j=136$, $\sum y_j^2=1860$, $\sum(y_j-\bar y)^3=9.12$,
    $\sum(y_j-\bar y)^4=40.35$\
    $\sum x_iy_j=2861$.\
    **Mayores de 40**\
    $\sum x_i=589$, $\sum x_i^2=36639$, $\sum(x_i-\bar x)^3=30793.08$,
    $\sum(x_i-\bar x)^4=1342559.42$\
    $\sum y_j=252$, $\sum y_j^2=6604$, $\sum(y_j-\bar y)^3=665.76$,
    $\sum(y_j-\bar y)^4=18260.51$\
    $\sum x_iy_j=15523$.\
    Se pide:

    1.  Dibujar el diagrama de caja y bigotes de la distancia mínima de
        enfoque. ¿Existen datos atípicos?

    2.  ¿En qué distribución de la distancia mínima de enfoque es más
        representativa la media, en la de menores o en la de mayores de
        40 años?

    3.  ¿Qué distribución de la distancia mínima de enfoque es más
        asimétrica, la de los menores o la de los mayores de 40 años?

    4.  ¿Qué distancia mínima de enfoque es relativamente menor, una
        distancia de 12 cm en los menores de 40 años, o una distancia de
        30 cm en los mayores de 40 años?

    5.  Dibujar el diagrama de dispersión de la edad y la distancia
        mínima de enfoque. ¿Existe relación lineal entre la distancia
        mínima de enfoque y la edad?

    6.  ¿En qué grupo existe una relación lineal más fuerte entre la
        distancia mínima de enfoque y la edad, en los menores o en los
        mayores de 40 años?

    7.  Según la recta de regresión, ¿cuánto aumenta la distancia mínima
        de enfoque por cada año que pasa en el grupo de los mayores de
        40 años?

    8.  A qué edad se espera tener una distancia mínima de enfoque de 32
        cm en el grupo de los mayores de 40 años? ¿Es fiable esta
        predicción?

    **Solution**\

    1.  ![image](media/supplements1/exercise1/reglin-opt-5-diagrama-caja-distancia-minima-enfoque.svg)

        No hay datos atípicos.

    2.  Menores de 40: $\bar y=13.6$, $s_y=1.0198$ y $cv_y=0.075$.\
        Mayores de 40: $\bar y=25.2$, $s_y=5.0359$ y $cv_y=0.1998$.\
        Así pues, la media es más representativa en los menores de 40
        años su coeficiente de variación es menor.

    3.  Menores de 40: $g_1=0.86$\
        Mayores de 40: $g_1=0.52$\
        Por tanto, la distribución de los menores de 40 es más
        asimétrica ya que el coeficiente de asimetría está más lejos
        de 0.

    4.  Menores de 40: $z(12)=-1.57$.\
        Mayores de 40: $z(30)=0.95$.\
        Así pues, una distancia de 12 cm en menores de 40 es
        relativamente menor.

    5.  ![image](media/supplements1/exercise1/reglin-opt-5-diagrama-dispersion-edad-distancia-minima-enfoque.svg)

        Se observan claramente dos tendencias, una para los menores de
        40 y la otra para los mayores. En el caso de los menores no
        parece haber una relación fuerte entre la distancia mínima de
        enfoque y la edad, mientras que en el caso de los mayores si
        parece que la hay y además es lineal.

    6.  Menores de 40: $r^2=0.13$.\
        Mayores de 40: $r^2=0.94$.\
        Por tanto, la relación lineal es más fuerte en los mayores de 40
        ya que el coeficiente de determinación es mayor.

    7.  Recta de regresión de $Y$ sobre $X$ en los mayores de 40:
        $y=4.6218+0.3494x$.\
        Así pues, por cada año que pasa la distancia mínima de enfoque
        aumenta $0.3494$ cm.

    8.  Recta de regresión de $X$ sobre $Y$ en los mayores de 40:
        $x=-8.6909+2.6822y$.\
        $X(32)=78$ años. Según el coeficiente de determinación la
        predicción es muy fiable, aunque el tamaño muestral no es muy
        grande y eso resta un poco de fiabilidad.


