%       FACTORIZACION LU
%   ML1
A = [2 8 0;2 2 -3;1 2 7]
[L, U] = lu(A)

%   ML2
A = [8 -1 2;3 7 2;1 1 5]
[L, U]  = lu(A)

%   ML3 (con ejemplo 2 y 3)
A = [6 -2 -4 4;3 -3 -6 1;-12 8 21 -8;-6 0 -10 7]
[L, U]=lu(A)

B= [2; -4; 8; -43]

Z = L\B
X = U\Z

%   ML4 ejercicios 7 y 8
%7)
A = [4 2 3;2 0 5;1 2 1]
B = [1; -1; -3]
[L, U] = lu(A)
Z = L\B %eliminacion hacia adelante
X = U\Z %eliminacion hacia atras
%8)
A = [-5 4 0 1;-30 27 2 7;5 2 0 2;10 1 -2 1]
B = [-17;-102;-7;-6]
[L, U] = lu(A)
Z = L\B %eliminacion hacia adelante
X = U\Z %eliminacion hacia atras

