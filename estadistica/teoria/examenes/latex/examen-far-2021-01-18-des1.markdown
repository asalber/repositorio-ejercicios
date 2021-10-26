1.  **Question**\
    La siguiente tabla muestra las diferencias de notas entre las notas
    de bachillerato y las del examen de selectividad en los centros
    públicos ($X$) y privados ($Y$) de una región:

    $$\begin{array}{lrrrrrrrrr}
      \hline
      \mbox{Centros públicos} & -1.2 & -0.7 & -0.4 & -0.9 & -1.6 & 0.5 & 0.2 & -1.8 & 0.8\\
      \mbox{Centros privados} & -2.1 & -0.5 & -0.7 & -1.9 & 0.2 & -2.8 & -1\\  
      \hline
      \end{array}$$

    1.  ¿Cuál de los siguientes diagramas de cajas corresponde a cada
        variable? Comparar la dispersión central de las dos variables
        según los diagramas de caja. ¿En qué variable es menor la
        mediana de las diferencias de notas?

        ![image](media/supplements1/exercise1/des-gen-16-boxplot-grades.svg)

    2.  ¿En qué centros es más representativa la media de la diferencia
        de notas, en los públicos o en los privados?

    3.  ¿En qué centros la distribución de la diferencia de notas es más
        simétrica?

    4.  ¿En qué centros la distribución de la diferencia de notas es más
        apuntada?

    5.  ¿Qué diferencia es relativamente menor, $-0.5$ puntos en un
        centro público o $-1$ en un centro privado?

    Usar las siguientes sumas para los cálculos:\
    Public: $\sum x_i=-5.1$, $\sum x_i^2=9.63$,
    $\sum (x_i-\bar x)^3=0.95$ y $\sum (x_i-\bar x)^4=8.76$.\
    Private: $\sum y_i=-8.8$, $\sum y_i^2=17.64$,
    $\sum (y_i-\bar y)^3=-0.82$ y $\sum (y_i-\bar y)^4=11.28$.\
    **Solution**\

    1.  El diagrama de cajas 1 corresponde a los centros privados y el 2
        a los centros públicos. La dispersión central (anchura de las
        cajas) es similar en ambas variables. La mediana es menor en los
        centros privados.

    2.  Centros públicos: $\bar x=-0.5667$ , $s^2=0.7489$ , $s=0.8654$ y
        $cv=1.5271$.\
        Centros privados: $\bar y=-1.2571$ , $s^2=0.9396$ , $s=0.9693$ y
        $cv=0.7711$.\
        Por tanto, la media de las diferencias de notas es más
        representativa en los centros privados.

    3.  $g_{1x}=0.1626$ y $g_{1y}=-0.1285$. Por tanto, la distribución
        de las diferencias de notas en los centros privados es más
        simétrica ya que su coeficiente de asimetría está más cerca
        de 0.

    4.  $g_{2x}=-1.2651$ y $g_{2y}=-1.1748$. Así pues, la distribución
        de las diferencias de notas en los centros pivados es más
        apuntada ya que su coeficiente de apuntamiento es mayor.

    5.  Centro público: $z(-0.5)=0.077$.\
        Centro privado: $z(-1)=0.2653$.\
        Por tanto, una diferencia de notas de -0.5 puntos en centros
        privados es relativamente menor que una diferencia de -1 puntos
        en centros privados.

2.  **Question**\
    Un auditor ha estudiado la relación entre el salario y el número de
    ausencias de los celadores de un hospital. La tabla siguiente
    muestra los salarios en miles de euros ($X$) y el número medio de
    ausencias anuales con esos salarios ($Y$).

    $$% latex table generated in R 4.0.3 by xtable 1.8-4 package
      % Sun Feb  7 00:57:42 2021
      \begin{array}{lrrrrrrrrr}
         \hline
      \mbox{Salario} & 20.0 & 22.5 & 25 & 27.5 & 30.0 & 32.5 & 35.0 & 37.5 & 40.0 \\ 
        \mbox{Ausencias} & 2.3 & 2.0 & 2 & 1.8 & 2.2 & 1.5 & 1.2 & 1.3 & 0.6 \\ 
         \hline
      \end{array}$$

    1.  Calcular la recta de regresión que explique las ausencias en
        función del salario.

    2.  ¿Cuál es el número de ausencias esperado de un celador con un
        salario de 29000€? ¿Es esta predicción fiable?

    3.  ¿Cuánto aumentará o disminuirá el número de ausencias por cada
        incremento de 1000€ en el salario?

    Usar las siguientes sumas para los cálculos:\
    $\sum x_i=270$ $10^3$€, $\sum y_i=14.9$ ausencias,\
    $\sum x_i^2=8475$ ($10^3$€)$^2$, $\sum y_i^2=27.11$ ausencias$^2$,\
    $\sum x_iy_j=420$ $10^3$€ ausencias.

    **Solution**\

    1.  $\bar x=30$ $10^3$€, $s_x^2=41.6667$ ($10^3$€)$^2$,\
        $\bar y=1.6556$ ausencias, $s_y^2=0.2714$ ausencias$^2$,\
        $s_{xy}=-3$ $10^3$€ ausencias\
        Recta de regresión de las ausencias sobre el salario:
        $y=3.8156   -0.072x$.

    2.  $y(29) = 1.7276$ ausencias\
        $r^2 = 0.796$, de modo que el modelo lineal se ajusta bien ya
        que el coeficiente de determinación no está lejos de 1, pero el
        tamaño muestral es demasiado pequeño para que las predicciones
        sean fiables.

    3.  El número de ausencias disminuirá 0.072 por cada incremento de
        1000€ en el salario.

3.  **Question**\
    En un estudio de regresión se sabe que la recta de regresión de $Y$
    sobre $X$ es $y+2x-10=0$ y la recta de regresión de $X$ sobre $Y$ es
    $y+3x-14=0$.

    1.  Calcular las medias de $X$ e $Y$.

    2.  Calcular el coeficiente de correlación lineal e interpretarlo.

    **Solution**\

    1.  $\bar x=4$ y $\bar y=2$.

    2.  $r=-0.8165$. El coeficiente de correlación lineal está cerca de
        -1 lo que significa que existe una relación lineal fuerte e
        inversa entre $X$ e $Y$.
