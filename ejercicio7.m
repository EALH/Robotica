%Ejercico para cualquier problema traslacion-rotación
tetha = 79
rad = (tetha*(2*pi))/360

%Matriz p

P = [33.2; 9.3; 17.4; 1]

Px = P(1,1)
Py = P(2,1)
Pz = P(3,1)

%Definimos Matriz Tpy

Tpy = [cos(rad), 0, sin(rad), (Px*cos(rad))+(Pz*cos(rad));...
    0, 1, 0, Py;...
    -sin(rad), 0, cos(rad), (Pz*cos(rad))-(Px*cos(rad));...
    0, 0, 0, 1]

%Matriz Ruvw
Ruvw = [35.3; 32.1; 40; 1]

%Multipicamos Tpy por Ruvw Para obtener la resultante
res = Tpy *Ruvw

%Obtenermos los valores a graficar de la resultante
R1 = res(1,1)
R2 = res(2,1)
R3 = res(3,1)

%graficamos 
plot3(R1,R2,R3, "g*")

