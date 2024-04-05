%   ML1
%a) creando una matriz con columnas los vectores binarios B^4
M = [0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1;0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1;0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1;0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1]
%b) Utilizando el comando s = sum(M)
s = sum(M)
%c) construyendo un vector binario, w de 1x16
w = [0 1 1 0 1 0 0 1 1 0 0 1 0 1 1 0]
%d)costruir las palabras de codigo del codigo de verificacionde paridad
%(4,5) mostrando la matriz C = [M;w]
C = [M;w]

