%Ejercico para cualquier problema con rotación en el eje x
alfa = -17
rad = (alfa*(2*pi))/360

%Obtenermos los angulos seno y coseno

S = sin(rad)
C = cos(rad)

Tx = [1,0,0,0;...
    0, C, -S, 0;...
    0, S, C, 0;...
    0,0,0,1]

%rxyz = [43.2, 65.4, 31.2] 
Rxyz = [43.2; 65.4; 31.2; 1];

%Obtendremos las coordenadas del vector Rxyz Multipicando Tx y Ruvw
Rxyzn = Tx * Rxyz

%Obtenermos los datos para graficar
R1 = Rxyzn(1,1)
R2 = Rxyzn(2,1)
R3 = Rxyzn(3,1)

$Graficamos
plot3(R1,R2,R3, "g*")
