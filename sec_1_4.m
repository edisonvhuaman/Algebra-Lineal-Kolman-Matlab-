%SECCION 1.4
%   ML1
%Determinando el menor entero positivo
%a)
A = [0 0 1;1 0 0;0 1 0]
I3 = eye(3)
k=3
A3= A^k
%b) calculando el valo minimo entero de A para que cumpla A^k = A
A  = [0 1 0 0;-1 0 0 0;0 0 0 1;0 0 1 0]
k=5
Ak=A^k

%   ML2
%Determinar el menor valor de k, para A^k sea una matriz nula
%a)
A = tril(ones(5),1)%crea una matriz triangular inferior, con una diagonal mas por encima de la diagonal principal, puesto que se le esta indicando con el 1
%b)
A = triu(fix(10*rand(7)),2)%crea una matriz triangular superior, el 2 indica que la matriz Triu sera dos espacios desde la diagonal principal encima, si se colocaria negativo se crearia hacia abajo

%   ML3
A = [1 -1 0;0 1 -1;-1 0 1]
%a)
p1= [1 -1 1 0 2]%son los coeficientes del polinomino matricial, debe de ser un vector
a1 = polyvalm(p, A)
%b)
p2 = [1 -3 3 0]
b1 = polyvalm(p2,A)

%   ML4
A = [0.1 0.3 0.6;0.2 0.2 0.6;0.3 0.3 0.4]
%a)
a4= (polyvalm([1 -7 0],A))*(polyvalm([1 3],A))
%b)
b4 = (polyvalm([1 -1],A))^2 + (polyvalm([1 0 1 0],A))
%c)
converge  = A^100

%   ML5
A = [1 1/2;0 1/3]
s1 = A
s2 = A^2
s3 = A^3
k=100
sk = A^k % la sucecion convergerá

%   ML6
A = [1/2 1/3;0 -1/5]
s1 = A
s2 = A^2
s3 = A^3
k=100
sk = A^k % la sucecion convergerá

%   ML7
A = [1 -2 1;-1 1 2;0 2 1]
%a)
a1 = A*A'
a2 = A'*A %No son iguales
%b)
B = A + A'
C = A - A'
%c)
D = B + C
A %B+C es el doble de A

%   ML8
%a)
B = randi([0 1],3)
%b)
sum1 = mod(B + B, 2)
sum2 = mod(B+B+B, 2)
%c)
k1 = 99
k2 = 100
sum1 = mod(k2*B,2)
sum2 = mod(k1*B,2) % si el num de factores es par la suma es 0, por otro lado si es impar la suma es la Matriz inicial

%   ML9
B = triu(ones(3)) %B^k = I3 ->k=4

%   ML10
B = triu(ones(4)) %B^k  =I4 ->k=4

%   ML11
B = triu(ones(5)) %B^k  = I5 -> k= 8



