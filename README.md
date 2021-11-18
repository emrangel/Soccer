# Soccer

![Image description](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/19pledsg4j9byhxpdsya.png)

Es difícil hablar o decir algo en el mundo del fútbol sin caer en críticas o insultos frívolos y más en el caso colombiano. Estamos acostumbrados a escuchar y darle importancia a periodistas que muchas veces usan los datos de forma equivocada y lo único que saben hacer es vender humo.

Pero que pasa realmente. ¿Por qué los equipos colombianos no juegan bien?. ¿Cuál es el estado del fútbol colombiano?. ¿Los datos pueden ayudarnos a entender esta situación?

Ahora, para esclarecer la actualidad del FPC, propongo analizar 4 estadísticas, que permiten conocer de forma básica el estado de un equipo:

1. Goles
2. Goles Recibidos
3. Goles esperados (xG)
4. Goles esperados en contra (xGA)

Puede que estos dos últimos no las hayan escuchado, pero son muy populares hoy en día (hasta FIFA 22 los usa).
De manera muy simple, xG (o goles esperados) es la probabilidad de que un tiro resulte en un gol en función de las características de ese tiro y los eventos que lo llevaron. De igual forma, los xG de mi rival se convierten en mis xGA.

<img src="https://media.giphy.com/media/8cyro9Vo2FNhZ5mucq/giphy.gif" width="800" height="600" />


Ahora bien, revisemos el comportamiento de estas estadísticas en el torneo betplay clausura y analicemos que sucede.

En la primera gráfica se puede observar la cantidad de Goles anotados (eje Y) y el xG (eje X) de cada uno de los equipos. Lo que se ve no es nada nuevo, Atlético Nacional y Millonarios son los equipos con más regularidad y mayor cantidad de goles, pero también son los que más expectativa de gol poseen, por lo que uno podría pensar que son los equipos que más atacan y elaboran mayores jugadas de peligro, ha diferencia del Huila o Patriotas que ni anotan ni generan ocasiones de gol. Además, fíjese que la línea de 45 grados divide los equipos en dos, quienes están por encima hicieron más goles de los esperados y quienes están por debajo anotaron menos de los esperados (no fueron efectivos).

![Image description](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/gqsifi97w88dvqrez2dy.png)

En la segunda gráfica se observa la cantidad de Goles Recibidos (eje Y) y los xGA (eje X), trazamos una línea de 45 grados y nos encontramos con que los equipos que están por encima de la línea son aquellos que recibieron más goles de los esperados. En otras palabras, los equipos que conceden más chances de gol o de peligro están por encima y los equipos que menos ocasiones de gol permiten están por debajo de la línea (parece que Millonarios y Tolima son rivales difíciles).


![Image description](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/1agsijnjsl202nyh3ra5.png)

Y por ultimo, en el gráfico 3 trazamos dos líneas que determinan la media o el promedio para comparar los xGA y los xG. Si nos ubicamos en el cuadrante 4, encontramos a los favoritos (Nacional y Millonarios), pero hay varias sorpresas como el caso del Cali o del Junior, que no son equipos más fuertes, pero que han hecho una campaña interesante en cuanto a que son los equipos que más ocasiones de gol generan y son los equipos que menos ocasiones permiten, es decir, parecen equipos equilibrados y con altas posibilidades de generar sorpresa (el trabajo de Dudamel y del Pereira es increíble).

![Image description](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/5kgnu0pti7zc3mh9cgcf.png)

Hay varias cosas que valen la pena analizar y verificar cuando se obtienen datos y se visualizan, espero les haya gustado. En los siguientes artículos hablaremos sobre el estado de la liga colombiana en comparación a las otras Sudamericanas, cual ha sido el resultado

El código y los datos en las carpetas ⚽⚽👀👀�
