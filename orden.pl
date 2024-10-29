%% verifica si los elementos de una lista están en orden ascendente.
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

% Caso base: una lista vacía o con un solo elemento está ordenada.
ordenada([]).
ordenada([_]). 

% Caso recursivo: verifica si la cabeza es menor o igual a la siguiente.
ordenada([Cabeza1, Cabeza2|Cola]) :- 
    Cabeza1 =< Cabeza2, 
    ordenada([Cabeza2|Cola]).
