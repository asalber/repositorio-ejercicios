1.  **Question**\
    Se recurre a cierta técnica con ultrasonidos en el proceso de
    diagnosis de una enfermedad. Su sensibilidad es del 91% y su
    especificidad del 98%. Sabiendo que la prevalencia de dicha
    enfermedad es del 20%, se pide:

    1.  Si a un inidividuo se le aplica la técnica y el resultado es
        positivo, ¿cuál es la probabilidad de que sufra esta enfermedad?

    2.  Si el resultado fuese negativo, ¿cuál sería la probabilidad de
        que no tuviera la enfermedad?

    3.  ¿La técnica es más fiable para confirmar la enfermedad o para
        descartarla? Justificar la respuesta.

    4.  Calcular la probabilidad de obtener un diagnóstico acertado con
        esta técnica.

    **Solution**\
    Sea $E$ el suceso consistente en tener la enfermedad y $+$ y $-$ los
    sucesos correspondientes a obtener un resultado positivo y negativo
    respectivamente en el test.

    1.  $VPP=0.9192$.

    2.  $VPN=0.9776$.

    3.  Es más fiable para descartar la enfermedad ya que el valor
        predictivo negativo es mayor que el valor predictivo positivo.

    4.  $P(E\cap +)+P(\overline E\cap -) = 0.966$.

2.  **Question**\
    Se sabe que la longitud del fémur de un feto a las 25 semanas de
    embarazo sigue una distribución normal de media 44 mm y desviación
    típica 2 mm. Se pide:

    1.  Calcular la probabilidad de que, tomando un feto de 25 semanas
        al azar, el fémur mida más de 46 mm.

    2.  Calcular la probabilidad de que, tomando un feto de 25 semanas
        al azar, el fémur mida entre 46 y 49 mm.

    3.  Determina un intervalo $(a,b)$ centrado en la media, que
        contenga el 80% de los valores de la longitud del fémur de fetos
        de 25 semanas.

    **Solution**\
    Sea $X\sim N(44,2)$ la longitud del fémur de un feto a las 25
    semanas de embarazo.

    1.  $P(X>46)=0.1587$.

    2.  $P(46<X<49))=0.1524$.

    3.  El intervalo centrado en $44$ que contiene 80% de las longitudes
        del femur de fetos de 25 semanas es $(41.4369,46.5631)$.

3.  **Question**\
    La probabilidad de que una lesión $A$ se reproduzca es $4/5$, la de
    que se reproduzca otra lesión $B$ es $1/2$, y la de que ninguna se
    reproduzca $1/20$. Hallar la probabilidad de que:

    1.  Al menos una se reproduzca.

    2.  Sólo se reproduzca la lesión $B$.

    3.  Se reproduzca la lesión $B$ si se ha reproducido la $A$.

    4.  Se reproduzca la lesión $B$ si no se reproduce la lesión $A$.

    **Solution**\

    1.  $P(A\cup B)=19/20$.

    2.  $P(B\cap\overline{A})=3/20$.

    3.  $P(B/A)=7/16$.

    4.  $P(B/\overline{A})=3/4$.

4.  **Question**\
    Una clínica de fisioterapia abre 6 horas al día y se sabe que el
    número medio de pacientes por día que llegan a la clínica es 12.

    Se pide:

    1.  Calcular la probabilidad de que lleguen más de 4 pacientes en 1
        horas.

    2.  Si la clínica tiene 4 fisioterapeutas y cada uno puede atender a
        un paciente por hora, ¿cuál es la probabilidad de que un día
        cualquiera haya alguna hora en la que algún paciente no pueda
        ser atendido? ¿Cuántos empleados debería haber para asegurarse
        de que esta probabilidad es menor del 10%?

    **Solution**\

    1.  Sea $X$ el número de pacientes que llegan en 1 horas.
        $X\sim P(2)$ y $P(X>4)=0.0527$.

    2.  Sea $Y$ el número de horas en un día en las que algún paciente
        no puede ser atendido. $Y\sim B(6, 0.0527)$ y $P(Y>0)=0.2771$.
        Se necesitan 5 empleados para que esta probabilidad sea menor
        del 10%.\
        Se necesitan 5 empleados para que esta probabilidad sea menor
        del 10%, ya que $P(X>5)=0.0527$ y $P(Y>0)=0.0954$, siendo ahora
        $Y\sim B(6, 0.0166)$.
