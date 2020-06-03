%Ejercico para cualquier problema traslacion-rotación
tetha = 54
rad = (tetha*(2*pi))/360

%Matriz p = 8.6, 13.97, 65.8

P = [8.6; 13.97; 65.8; 1]

Px = P(1,1)
Py = P(2,1)
Pz = P(3,1)

%Definimos Matriz Tpz

Tpz = [cos(rad), -sin(rad), 0, (Px*cos(rad))-(Py*sin(rad));...
    sin(rad), cos(rad), 0, (Px*sin(rad))+(Py*cos(rad));...
    0, 0, 1, Pz;...
    0, 0, 0, 1]


%Matriz Ruvw = (12.4, 32.1, 9.8)
Ruvw = [12.4; 32.1; 9.8; 1]

%Multipicamos Tpy por Ruvw Para obtener la resultante
res = Tpz * Ruvw

%Obtenermos los valores a graficar de la resultante
R1 = res(1,1)
R2 = res(2,1)
R3 = res(3,1)

%graficamos 
plot3(R1,R2,R3, "g*")

