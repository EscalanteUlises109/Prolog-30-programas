%% Cuadrados de los números.
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

% Caso base: los cuadrados de 0 son vacíos.
cuadrados(0, []).

% Caso recursivo: calcula el cuadrado de N y agrega a la lista.
cuadrados(N, [Cuadrado|Lista]) :- 
    N > 0,
    Cuadrado is N * N,
    N1 is N - 1,
    cuadrados(N1, Lista).
