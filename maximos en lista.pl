%% Maximos de una lista
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

% Caso base: el máximo de una lista de un solo elemento es ese elemento.
maximo([X], X).

% Caso recursivo: compara la cabeza con el máximo de la cola.
maximo([Cabeza|Cola], Max) :- 
    maximo(Cola, MaxCola), 
    Max is max(Cabeza, MaxCola).

