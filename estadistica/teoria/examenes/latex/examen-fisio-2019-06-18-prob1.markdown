1.  **Question**\
    En un estudio sobre la efectividad de un programa de prevención de
    riesgos laborales en oficios que requieren estar sentados muchas
    horas, se tomó una muestra aleatoria 500 de individuos entre 40 y 50
    años sin lesiones vertebrales que pasaban más de 5 horas sentados.
    La mitad de los individuos siguieron un programa de prevención de
    riesgos laborales mientras que los demás no. Transcurridos 5 años el
    número de personas que desarrollaron alguna lesión vertebral en el
    grupo de los que siguieron el programa de prevención fue de 12,
    mientras que en el otro grupo fue de 32. En los siguientes 5 años
    hubo otras 21 personas que desarrollaron alguna lesión vertebral en
    el grupo de los que siguieron el programa de prevención, mientras
    que en el otro grupo fue de 48. Se pide:

    Se pide:

    1.  Calcular la incidencia acumulada de lesiones vertebrales en la
        muestra total a los 5 y a los 10 años.

    2.  Calcular el riesgo absoluto de desarrollar alguna lesión
        vertebral a los 10 años en el grupo de los que siguieron el
        programa de prevención y en el de los que no.

    3.  Calcular el riesgo relativo de desarrollar alguna lesión
        vertebral a los 10 años de los que siguieron el programa de
        prevención de riesgos con respecto a los que no e interpretarlo.

    4.  Calcular el odds ratio de desarrollar alguna lesión vertebral a
        los 10 años de los que siguieron el programa de prevención de
        riesgos con respecto a los que no e interpretarlo.

    5.  ¿Cuál de las dos medidas anteriores, riesgo relativo u odds
        ratio, tiene más sentido en este estudio? Justificar la
        respuesta.

    **Solution**\
    Sea $E$ el evento consistente en sufrir una lesión vertebral.

    1.  Incidencia acumulada después de 5 años: $R(E)=0.088$.\
        Incidencia acumulada después de 10 años: $R(E)=0.226$.

    2.  Riesgo en el grupo tratamiento: $R_T(E)=0.132$.\
        Riesgo en el grupo control: $R_C(E)=0.32$.

    3.  $RR(D)=0.4125$. Por tanto, el riesgo de sufrir una lesión
        vertebral es menos de la mitad si se sigue el programa de
        prevención.

    4.  $OR(D)=0.3232$. Por tanto, el odd de sufrir una lesión vertebral
        es menos de un tercio si se sigue el programa de prevención.

    5.  Puesto que se trata de un estudio prospectivo se puede estimar
        la prevalencia de $D$ y ambos estadísticos son válidos, pero el
        riesgo relativo es más fácil de interpretar.

2.  **Question**\
    En la siguiente tabla se muestran los resultados de un estudio para
    evaluar la utilidad de una tira reactiva para el diagnóstico de
    infección urinaria: $$\begin{array}{ccc}
      \hline
      \mbox{Resultado} & \mbox{Con infección} & \mbox{Sin infección}\\
      \mbox{Positivo} & 60 & 80\\
      \mbox{Negativo} & 10 & 200\\
      \hline
      \end{array}$$

    1.  Calcular la sensibilidad y la especificidad del test.

    2.  Calcular los valores predictivos positivo y negativo del test.
        ¿El test es mejor para confirmar la enfermedad o para
        descartarla?

    3.  Si a partir de un estudio de prevalencia efectuado previamente
        conociéramos que la verdadera prevalencia de la infección
        urinaria en la población es del 2%, ¿cómo se verían afectados
        los valores predictivos?

    **Solution**\
    Sea $E$ el suceso consistente en tener la infección urinaria y $+$ y
    $-$ los sucesos correspondientes a obtener un resultado positivo y
    negativo respectivamente en el test.

    1.  Sensibilidad = $0.8571$ y Especificidad = $0.7143$.

    2.  $VPP=0.4286$ y $VPN=0.9524$. Puesto que $VPP<VPN$ el test es
        mejor para descartar la enfermedad.

    3.  $VPP=0.0577$ y $VPN=0.9959$. El valor predictivo positivo
        decrece mucho mientras el valor predictivo negativo aumenta un
        poco.

3.  **Question**\
    El tiempo de recuperación tras un tipo de lesión sigue una
    distribución normal con varianza 64 días. Se sabe además que el 10%
    de las personas con esta lesión tardan en curarse más de 80 días.

    1.  ¿Cuál es el tiempo esperado de curación para esta lesión?\
        Nota: Si no se sabe calcular, usar $\mu=70$ para el resto de los
        apartados

    2.  ¿Qué porcentaje de individuos tardará en curarse entre 60 y 75
        días?

    3.  Si se toma una muestra aleatoria de 12 individuos con esta
        lesión, ¿cuál es la probabilidad de que haya entre 9 y 11
        individuos, ambos incluidos, que tarden menos de 80 días en
        curarse?

    4.  Si se toma una muestra aleatoria de 500 individuos con esta
        lesión, ¿cuál es la probabilidad de haya menos de 4 por encima
        del percentil 99 del tiempo de curación?

    **Solution**\
    Sea $X$ el tiempo requerido para recuperarse de la lesión. Entonces
    $X\sim N(\mu, 8)$.

    1.  $\mu=69.7476$ días.

    2.  $P(60<X<75) = 0.6327$.

    3.  Sea $Y$ el número de individuos con la lesión que requieren más
        de 80 días para recuperarse en una muestra aleatoria de 12
        individuos. Entonces $Y\sim B(12, 0.9)$ y
        $P(9\leq Y\leq 11)=0.6919$.

    4.  Sea $Z$ be el número de individuos con la lesión que requieren
        un tiempo de recuperación por encima del percentil 99 en una
        muestra aleatoria de 500 individuos. Entonces
        $Z\sim B(500, 0.01)\approx P(5)$ y $P(Z\leq 4)=0.265$.
