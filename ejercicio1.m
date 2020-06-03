%Ejercico para cualquier problema con rotación en el eje x
alfa = 85
rad = (alfa*(2*pi))/360

%Obtenermos los angulos seno y coseno

S = sin(rad)
C = cos(rad)

Tx = [1,0,0,0;...
    0, C, -S, 0;...
    0, S, C, 0;...
    0,0,0,1]

%Cambiar este vector dependiendo el problema
Ruvw = [3.5; 6.4; 9.1; 1];

%Obtendremos las coordenadas del vector Rxyz Multipicando Tx y Ruvw
Rxyz = Tx * Ruvw

%Obtenermos los datos para graficar
R1 = Rxyz(1,1)
R2 = Rxyz(2,1)
R3 = Rxyz(3,1)

$Graficamos
plot3(R1,R2,R3, "g*")
