%Ejercico para cualquier problema rotacion-traslación-rotación
beta = -34
rad2 = (beta*(2*pi))/360

tetha = 78
rad1 = (tetha*(2*pi))/360

%Matriz p = (5.6, 3.6, 5.9)
P = [5.6; 3.6; 5.9; 1]

Px = P(1,1)
Py = P(2,1)
Pz = P(3,1)

%Matriz Typ
Typ = [cos(rad2), 0,  -sin(rad2), Px;...
    0, 1, 0, Py;...
     -sin(rad2), 0 cos(rad2), Pz;...
     0, 0, 0, 1]

%multiplicación de Typ * P
Mul = Typ * P

%Definimos Matriz Tpx

Tpx = [1 , 0, 0, Px;...
    0, cos(rad1), -sin(rad1), (Py*cos(rad1))-(Pz*sin(rad1));...
    0, sin(rad1), cos(rad1), (Py*sin(rad1))+(Pz*cos(rad1));...
    0, 0, 0, 1]

%Obtenemos el resultado final
res = Tpx * Mul

%Obtenermos los valores a graficar de la resultante
R1 = res(1,1)
R2 = res(2,1)
R3 = res(3,1)

%graficamos 
plot3(R1,R2,R3, "g*")
