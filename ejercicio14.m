%Ejercico para cualquier problema traslacion-rotación
tetha = 23
rad1 = (tetha*(2*pi))/360

%Matriz p = (34.4, 32.15, 45.06)

P = [34.4; 32.15; 45.06; 1]

Px = P(1,1)
Py = P(2,1)
Pz = P(3,1)

%Definimos Matriz Tpx

Tpx = [1 , 0, 0, Px;...
    0, cos(rad1), -sin(rad1), (Py*cos(rad1))-(Pz*sin(rad1));...
    0, sin(rad1), cos(rad1), (Py*sin(rad1))+(Pz*cos(rad1));...
    0, 0, 0, 1]

%Matriz Ruvw = (12.4, 76.6, 90.8)
Ruvw = [12.4; 76.6; 90.8; 1]

%Multipicamos Tpx por Ruvw Para obtener la resultante
res = Tpx *Ruvw

%Obtenermos los valores a graficar de la resultante
R1 = res(1,1)
R2 = res(2,1)
R3 = res(3,1)

%graficamos 
plot3(R1,R2,R3, "g*")

