%Ejercico para cualquier problema con rotación en el eje y
alfa = -45
rad = (alfa*(2*pi))/360


%definir la matriz Ty

Ty = [cod(rad),0,sin(rad),0;...
    0, 1, 0, 0;...
    -sin(rad), 0, cos(rad), 0;...
    0,0,0,1]

Rxyz = [13; 5.6; 53.2; 1]

%Obtendremos las coordenadas del vector Rxyz Multipicando Tx y Ruvw
Rxyzn = Ty * Rxyz

%Obtenermos los datos para graficar
R1 = Rxyzn(1,1)
R2 = Rxyzn(2,1)
R3 = Rxyzn(3,1)

$Graficamos
plot3(R1,R2,R3, "g*")
