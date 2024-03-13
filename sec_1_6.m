%   ML1
A = [4 2 2;-3 1 4;1 0 3;5 -1 5];
%a
A(1, :) = (1/4)*A(1, :);
%b
A(2, :) = 3*A(1, :) + A(2, :);
%c
A(3, :) = -1*A(1,:) + A(3, :);
%d
A(4,:) = -5*A(1, :) + A(4,:);
%e tercambiando 2 y 4
in2_4 = A(2, : );
A(2,:) = A(4,:);
A(4,:) = in2_4;

%   ML2
A = [1/2 1/3 1/4 1/5;1/3 1/4 1/5 1/6;1 1/2 1/3 1/4]
%realizando operaciones por filas
%a
A(1,:) = 2*A(1,:)
%b
A(2,:) = (-1/3) * A(1, :) + A(2,:)
%b
A(3,:) = -1*A(1,:) + A(3,:)
%c
in2_3 = A(2,:)
A(2,:)= A(3,:)
A(3,:) = in2_3

%   ML3
A = [4 2 2;-3 1 4;1 0 3;5 -1 5]
%para determinar la forma escalonada reducida de la matriz A use la funcion
%rref
rref(A)

%   ML4
A = [1/2 1/3 1/4 1/5;1/3 1/4 1/5 1/6;1 1/2 1/3 1/4]
rref(A)

%   ML5
%encontrando las soluciones del ejercicio 21a
%contruyendo la forma Ax = b -> [A b]
%Matriz de coeficientes
A = [1 1 2 3;1 -2 1 1;3 1 1 -1]
%matriz "b"  de igualdad
b = [13;8;1]
%creando la matriz aumentada
A_b = [A b]
%realizando la reduccion de Gauss-Jordan 
rref(A_b)
%entonces queda x - w = -2, y = -1, z + 2w = 8
%x = -2+r, y=-1, z=8-2r, w =r, r es cualquier numero real

%   ML6
%ejercicio 20b
A = [1 1 3 2;2 -1 0 4;0 3 6 0]
b = [7;8;8]
aum_Ab = [A b]
rref(aum_Ab)
% x+z+2w=0, y+2z=0, inconsistente por la tercera fila

%   ML7
%27b es un sistema homogeneo
A=[1 2 3 0;1 1 1 0;1 1 2 0;1 3 3 0]
rref(A)
% x=0, y=0, z=0, solucion trivial

%   ML8
%28a, es un sistema homogeneo
A= [1 2 3 0;1 1 1 0;5 7 9 0]
rref(A)
% x-z=0, y+2=0
%x=-r, y=-2, z=r, r cualquier numero real

%   ML9
A = [1 2;2 4]
%determinar la solucion no trivial del sistema homogeneo (5I2 - A)x = 0
oper = 5*eye(2) - A
oper_0 = [oper zeros(2,1)]
rref(oper_0)
% x-y/2 = 0
% x=r/2, y=r, r cualquier num real

%   ML10
A=[1 5;5 1]
oper = -4*eye(2) - A
oper_0 = [oper zeros(2,1)]
rref(oper_0)
% x+y=0
% x = -r, y=r, r cualquier num real

%    ML11
%resolver los sistemas del 27 y 28
%27a
A = [1 1 1 0;1 1 0 3;0 1 1 1]
rref(A)
%x=-1, y=4, z=-3
%27b
B = [1 2 3 0;1 1 1 0;1 1 2 0;1 3 3 0]
rref(B)
%solucion trivial
%28a
A = [1 2 3 0;1 1 1 0;5 7 9 0]
rref(A)
%x=r, y=-2r, z=r
%28b
B = [1 2 1 7;2 0 1 4;1 0 2 5;1 2 3 11;2 1 4 12]
rref(B)
% x=1, y=2, z=2

%   ML12
%usando la barra invertida para obtener las respuestas para los ejercicios
%27 y 28, pero se requiere la matriz A y la matriz b
%27a
A = [1 1 1;1 1 0;0 1 1]
b= [0;3;1]
A\b
%27b
A = [1 2 3;1 1 1;1 1 2;1 3 3]
b=[0;0;0;0]
A\b
%28a
A = [1 2 3;1 1 1;5 7 9]
b=[0;0;0]
A\b %al realizar el calculo matlab saca como una advertencia, supongo que es por que en las soluciones esta presente r que puede ser cualquier num real
%28b
A = [1 2 1;2 0 1;1 0 2;1 2 3;2 1 4]
b=[7;4;5;11;12]
A\b
%21b
A = [1 1 1;1 1 -2;2 1 1]
b = [1;3;2]
A\b

%   ML13
%utilizar rref y \
A = [1 2 3 1;4 5 6 0;7 8 9 0]
rref(A)
% inconsistente
A = [1 2 3;4 5 6;7 8 9]
b = [1;0;0]
A\b %muestra una advertencia que el sistema tiene problemas con redondeo

%   ML14
%no cuento con las demostraciones que piden

%   ML15
%resolver los ejercicios de 56 al 59
%56a
A = [1 1 1 0;0 1 1 1;1 1 0 1]
mod(rref(A),2)
%x=1, y=0, z=1
%56b
A = [1 1 1;1 0 1;0 1 1]
b=[1;0;1]
mod(A\b,2)
%x=0, y=1, z=0
%57a
A = [1 1 0 1 0; 1 0 1 1 1; 0 1 1 1 1];
mod(rref(A),2) %Aqui hay un problema por que el modulo da 1/2, y eso esta dificultando hallar, entonce los que se hice es lo siguiente
A1 = mod(rref(A),2) %Almacenando en A1 la matriz reducida de A en base 2 pero la colum 4 esta con 1/2, entonces
A1(:,4)=str2double(dec2bin(A1(:,4))) % convirtiendo cada elemento de 1/2 a base 2, pero como la funcion devuelve sstring entonces tambien lo converti a flotante
%x=0, y=0, z=0, w={0,1} %pero igual no me sale
%57b
A = [1 1 0 0 0;1 1 1 0 1;1 1 1 1 0]
mod(rref(A),2)
%x=r, y=r, z=1,w=1, [0,0,1,1], [1,1,1,1]
%58a
A=[1 1 1 0 1;0 1 1 1 1;1 0 0 1 1]
mod(rref(A),2)
%iconistente por la ultima fila
%58b
A=[1 1 1 0 0;0 1 1 1 0;1 0 0 1 0]
mod(rref(A),2)
%x=0, y=r, z=r, w=0, [0,0,0,0], [0,1,1,0] %me salio distinto creo que
%tambien me salio mal en el programa de matlab
%59a
A = [1 1 0 0;0 1 0 1;1 1 1 0]
mod(rref(A),2)
%x=1,y=1,z=0, [1 1 0]
%59b
A=[1 1 0 1 1;1 0 1 1 0;0 0 1 1 0;0 1 1 0 0]
mod(rref(A),2)
%da inconsistencia por la ultima fila

%   ML16
A = [1 1 0 0 1 1;1 0 1 0 0 1;1 1 1 1 1 0]
mod(rref(A),2)
%x=r, y=1+r+s, z=1+r, w=r, u=s, -> 
%r=0, s=0, [1 1 1 0 0]
%r=0, s=1, [0 0 1 0 1]
%r=1, s=1, [1 1 0 1 1]
%r=1, s=0, [1 0 0 1 0]