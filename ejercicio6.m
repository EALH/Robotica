%Ejercico para cualquier problema con rotación en el eje y
alfa = 88
rad = (alfa*(2*pi))/360


%Tambien podemos definir la matriz Ty así

Ty = [cod(rad),0,sin(rad),0;...
    0, 1, 0, 0;...
    -sin(rad), 0, cos(rad), 0;...
    0,0,0,1]

%Cambiar este vector dependiendo el problema
Ruvw = [45.3; 34.6; 56.7; 1]

%Obtendremos las coordenadas del vector Rxyz Multipicando Tx y Ruvw
Rxyz = Ty * Ruvw

%Obtenermos los datos para graficar
R1 = Rxyz(1,1)
R2 = Rxyz(2,1)
R3 = Rxyz(3,1)

$Graficamos
plot3(R1,R2,R3, "g*")
