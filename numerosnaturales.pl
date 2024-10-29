%% Numeros naturales.
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

% Caso base: una lista vacía para 0.
numeros_naturales(0, []).

% Caso recursivo: agrega N a la lista de los números naturales anteriores.
numeros_naturales(N, [N|Lista]) :- 
    N > 0,
    N1 is N - 1,
    numeros_naturales(N1, Lista).
