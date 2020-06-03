%Ejercico para cualquier problema con rotación en el eje x
alfa = 23
rad = (alfa*(2*pi))/360

%Obtenermos los angulos seno y coseno

S = sin(rad)
C = cos(rad)

Tz = [C, -S,0, 0;...
    S, C, 0, 0;...
    0, 0, 1, 0;...
    0, 0, 0, 1]

%Ruvw = [45.7, 32.5, 78.6]
Ruvw = [45.7; 32.5; 78.6; 1];

%Obtendremos las coordenadas del vector Rxyz Multipicando Tx y Ruvw
Rxyz = Tz * Ruvw

%Obtenermos los datos para graficar
R1 = Rxyz(1,1)
R2 = Rxyz(2,1)
R3 = Rxyz(3,1)

$Graficamos
plot3(R1,R2,R3, "g*")
