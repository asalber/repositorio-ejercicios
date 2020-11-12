1.  **Question**\
    Las edades de una muestra de pacientes que acuden a una clínica de
    fisioterapia son las siguientes:

    25, 30, 44, 44, 51, 51, 53, 56, 57, 58, 58, 58, 59, 59, 61, 63, 63,
    63, 66, 68, 70, 71, 72, 74, 82, 85

    Se pide:

    1.  Calcular los cuartiles.

    2.  Dibujar el diagrama de cajas e identificar los datos atípicos
        (no agrupar los datos en intervalos).

    3.  Considerando los grupos de los menores y mayores de 65 años, ¿en
        cuál de ellos es más representativa la media?

    4.  ¿Qué distribución es menos simétrica, la de los menores o la de
        los mayores de 65 años?

    5.  ¿Qué edad es relativamente mayor con respecto a su grupo, 50
        años en el grupo de los menores o 75 en el de los mayores?

    Usar las siguientes sumas para los cálculos.\
    Menores de 65: $\sum x_i=953$ años, $\sum x_i^2=52475$ años$^2$,
    $\sum (x_i-\bar x)^3=-30846.51$ años$^3$ y
    $\sum (x_i-\bar x)^4=939658.83$ años$^4$.\
    Mayores de 65: $\sum x_i=588$ años, $\sum x_i^2=43530$ años$^2$,
    $\sum (x_i-\bar x)^3=1485$ años$^3$ y $\sum (x_i-\bar x)^4=26983.5$
    años$^4$.

    **Solution**\

    1.  $C_1=53$ años, $C_2=59$ años and $C_3=68$ años.

    2.  Hay 2 datos atípicos: 25, 30.

        ![image](media/supplements1/exercise1/des-fis-1-diagrama-caja-edades.svg)

    3.  Sea $x$ las edades de los pacientes menores de 65 e $y$ las de
        los mayores de 65.\
        $\bar x=52.9444$ años, $s_x^2=112.1636$ años$^2$, $s_x=10.5907$
        años and $cv_x=0.2$.\
        $\bar y=73.5$ años, $s_y^2=39$ años$^2$, $s_y=6.245$ años y
        $cv_y=0.085$.\
        La media es más representativa en los pacientes mayores de 65 ya
        que su coeficiente de variación es menor.

    4.  $g_{1x}=-1.4426$ y $g_{1y}=0.7621$, de manera que la
        distribución de edades de los pacientes menores de 65 es menos
        simétrica.

    5.  Las puntuaciones típicas son $z_x(50)=-0.278$ y
        $z_y(72)=-0.2402$, de manera que 50 años es relativamente menor
        en el grupo de los pacientes menores de 65.

2.  **Question**\
    La siguiente tabla recoge el número de lesiones en un equipo durante
    una temporada y el número medio de minutos diarios de calentamiento
    que hacen sus jugadores.

    $$% latex table generated in R 3.4.4 by xtable 1.8-2 package
      % Fri Jun  8 14:24:17 2018
      \begin{array}{lrrrrrrrrrr}
         \hline
      \mbox{Tiempo calentamiento} & 15 & 35 & 22 & 28 & 21 & 18 & 25 & 30 & 23 & 20 \\ 
        \mbox{Lesiones} & 42 & 2 & 16 & 6 & 17 & 29 & 10 & 3 & 12 & 20 \\ 
         \hline
      \end{array}$$

    Se pide:

    1.  Dibujar el diagrama de dispersión.

    2.  ¿Qué modelo de regresión es más apropiado para predecir el
        número de lesiones en función del tiempo de calentamiento, el
        logarítmico o el exponencial? Utilizar dicho modelo para
        predecir el número de lesiones esperado para 20 minutos de
        calentamiento diarios.

    3.  ¿Qué modelo de regresión es más apropiado para predecir el
        tiempo de calentamiento en función del número de lesiones, el
        logarítmico o el exponencial? Utilizar dicho modelo para
        predecir el mínimo tiempo de calentamiento diario necesario para
        no tener más de 10 lesiones en la temporada.

    4.  ¿Son fiables estas predicciones? ¿Cuál de ellas es más fiable?

    Usar las siguientes sumas para los cálculos ($X$ tiempo de
    calentamiento e $Y$ número de lesiones): $\sum x_i=237$,
    $\sum \log(x_i)=31.3728$, $\sum y_j=157$, $\sum \log(y_j)=24.0775$,\
    $\sum x_i^2=5937$, $\sum \log(x_i)^2=98.9906$, $\sum y_j^2=3843$,
    $\sum \log(y_j)^2=66.3721$,\
    $\sum x_iy_j=3115$, $\sum x_i\log(y_j)=519.1907$,
    $\sum \log(x_i)y_j=465.8093$, $\sum \log(x_i)\log(y_j)=73.3995$.

    **Solution**\

    1.  \null
        ![image](media/supplements1/exercise2/regnol-fis-1-diagrama-dispersion-lesiones-tiempo-calentamiento.svg)

    2.  $\bar x=23.7$ min, $s_x^2=32.01$ min$^2$.\
        $\overline{\log(x)}=3.1373$ log(min), $s_{\log(x)}^2=0.0565$
        log(min)$^2$.\
        $\bar y=15.7$ lesiones, $s_y^2=137.81$ lesiones$^2$.\
        $\overline{\log(y)}=2.4078$ log(lesiones),
        $s_{\log(y)}^2=0.8399$ log(lesiones)$^2$.\
        $s_{x\log(y)}=-5.1446$, $s_{\log(x)y}=-2.6744$\
        Coeficiente de determinanción exponencial: $r^2=0.9844$\
        Coeficiente de determinación logarítmico: $r^2=0.9185$\
        Por tanto, el modelo de regresión exponencial es mejor para
        predecir el número de lesiones en función del tiempo de
        calentamiento.\
        Modelo de regresión exponencial: $y=e^{6.2168+-0.1607x}$.\
        Predicción: $y(20)=20.1341$ lesiones.

    3.  El modelo logarítmico es mejor para predecir el tiempo de
        calentamiento en función del número de lesiones.\
        Modelo de regresión logarítmico: $x=164.1851+-47.3292\log(y)$.\
        Predicción: $x(10)=55.2056$ min.

    4.  De acuerdo al coeficiente de determinación ambas predicciones
        son muy fiables pero la última lo es menos ya que es para un
        valor que no está incluido en el rango de valores de la muestra.
