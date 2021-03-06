1.  **Question**\
    En un estudio sobre la efectividad de un programa de prevención de
    riesgos laborales en oficios que requieren estar sentados muchas
    horas, se tomó una muestra aleatoria de individuos entre 40 y 50
    años que pasaban más de 5 horas sentados y se observó si habían
    seguido las recomendaciones del programa de prevención o no y el
    número de lesiones vertebrales transcurridos 10 años. Los resultados
    obtenidos aparecen en la siguiente tabla.

    $$% latex table generated in R 3.6.0 by xtable 1.8-4 package
      % Tue Jul  2 16:48:34 2019
      \begin{array}{lrrrrrrrrrrrrrrr}
         \hline
      \mbox{Con programa de prevención} & 1 & 3 & 2 & 4 & 4 & 0 & 2 & 4 & 2 & 2 & 5 & 2 & 3 & 2 & 0 \\ 
        \mbox{Sin programa de prevención} & 6 & 3 & 1 & 3 & 7 & 6 & 5 & 5 & 9 & 5 & 5 & 4 & 4 & 3 &  \\ 
         \hline
      \end{array}$$

    Se pide:

    1.  Dibujar el polígono de frecuencias relativas acumuladas de la
        muestra global.

    2.  Según el rango intercuartílico, ¿en qué muestra hay una mayor
        dispersión central del número de lesiones vertebrales, en la de
        los que siguieron el programa de prevención o en la de los que
        no?

    3.  ¿En qué muestra hay una mayor dispersión relativa del número de
        lesiones vertebrales, en la de los que siguieron el programa de
        prevención o en la de los que no?

    4.  ¿Qué muestra tienen un apuntamiento más normal del número de
        lesiones vertebrales, la de los que siguieron el programa de
        prevención o en la de los que no?

    5.  ¿Qué número de lesiones vertebrales es relativamente mayor, 2
        lesiones siguiendo el programa de prevención o 4 sin seguirlo?

    Usar las siguientes sumas para los cálculos:\
    Siguiendo el programa de prevención: $\sum x_i=36$ lesiones,
    $\sum x_i^2=116$ lesiones$^2$, $\sum (x_i-\bar x)^3=-0.48$
    lesiones$^3$ y $\sum (x_i-\bar x)^4=135.97$ lesiones$^4$.\
    No siguiendo el programa de prevención: $\sum y_i=66$ lesiones,
    $\sum y_i^2=362$ lesiones$^2$, $\sum (y_i-\bar y)^3=27.92$
    lesiones$^3$ y $\sum (y_i-\bar y)^4=586.9$ lesiones$^4$.

    **Solution**\

    1.  ![image](media/supplements1/exercise1/des-fis-5-poligono-frecuencias-relativas-acumuladas-lesiones-vertebrales.svg)

    2.  Con programa de prevención: $C_1=2$ lesiones, $C_3=4$ lesiones,
        $RI=2$ lesiones.\
        Sin programa de prevención: $C_1=3$ lesiones, $C_3=6$ lesiones,
        $RI=3$ lesiones.\
        La muestra que no siguió el programa de prevención tiene una
        dispersión central mayor ya que su rango intercuartílico es
        mayor.

    3.  Con programa de prevención: $\bar x=2.4$ lesiones, $s^2=1.9733$
        lesiones$^2$, $s=1.4048$ lesiones and $cv=0.5853$.\
        Sin programa de prevención: $\bar y=4.7143$ lesiones,
        $s^2=3.6327$ lesiones$^2$, $s=1.906$ lesiones and $cv=0.4043$.\
        La muestra que siguió el programa de prevención tiene una
        dispersión relativa con respecto a la media mayor ya que su
        coeficiente de variación es mayor.

    4.  Con programa de prevención: $g_2=-0.6722$.\
        Sin programa de prevención: $g_2=0.1768$.\
        Así pues, la muestra que no siguió el programa de prevención
        tiene un apuntamiento más normal ya que el coeficiente de
        apuntamiento está más próximo a 0.

    5.  Con programa de prevención: $z(2)=-0.2847$.\
        Sin programa de prevención: $z(4)=-0.3748$.\
        Así pues, 4 lesiones sin seguir el programa de prevención es
        relativamente menor que 2 lesiones siguiendo el programa ya que
        su puntuación típica es menor.

2.  **Question**\
    El precio de cierto relajante muscular evolucionó entre 2015 y 2019
    como indica la siguiente tabla:
    $$% latex table generated in R 3.6.0 by xtable 1.8-4 package
      % Tue Jul  2 16:48:34 2019
      \begin{array}{lrrrrr}
         \hline
      \mbox{Año} & 2015 & 2016 & 2017 & 2018 & 2019 \\ 
        \mbox{Precio (€)} & 1.40 & 1.60 & 1.92 & 2.30 & 2.91 \\ 
         \hline
      \end{array}$$

    1.  ¿Qué modelo de regresión es mejor para predecir el precio del
        función del año, el lineal o el exponencial?

    2.  Utilizar el mejor de los dos modelos anteriores para predecir el
        precio del medicamento en 2020.

    **Solution**\

    1.  $\bar x=2017$ años, $s_x^2=2$ años$^2$.\
        $\bar y=2.026$ €, $s_y^2=0.2882$ €$^2$.\
        $\overline{\log(y)}=0.672$ log(€), $s_{\log(y)}^2=0.0673$
        log(€)$^2$.\
        $s_{xy}=0.744$ años$\cdot$€, $s_{x\log(y)}=0.3653$
        años$\cdot\log(€)$.\
        Coeficiente de determinación lineal: $r^2=0.9603$\
        Coeficiente de determinación exponencial: $r^2=0.9909$\
        Así pues, el modelo de regresión exponencial es mejor para
        predecir el precio ya que su coeficiente de determinación es
        mayor.

    2.  Modelo de regresión exponencial: $y=e^{-367.6861+0.1826x}$.\
        Predicción: $y(2020)=3.3867$ €.

3.  **Question**\
    En un problema de regresión lineal entre dos variables $X$ e $Y$ se
    conoce $\bar x = 3$, $s_x^2=2$, $s_y^2=10.8$ y la ecuación de la
    recta de regresión de $Y$ sobre $X$ es $y=90.9-2.3x$.

    1.  Calcular la media de $Y$.

    2.  Calcular e interpretar el coeficiente de correlación lineal.

    **Solution**\

    1.  $\bar y = 84$.

    2.  $r=-0.9898$.
