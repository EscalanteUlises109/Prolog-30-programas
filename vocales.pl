%% vocales de una lista 
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

% Caso base: la cadena vacía tiene 0 vocales.
contar_vocales([], 0).

% Caso recursivo: si la cabeza es una vocal, cuenta 1 y suma con la cola.
contar_vocales([Cabeza|Cola], N) :- 
    es_vocal(Cabeza), 
    contar_vocales(Cola, NCola), 
    N is NCola + 1.

% Caso recursivo: si no es vocal, solo cuenta la cola.
contar_vocales([Cabeza|Cola], N) :- 
    \+ es_vocal(Cabeza), 
    contar_vocales(Cola, N).

% Define qué es una vocal.
es_vocal(X) :- 
    member(X, [a, e, i, o, u, A, E, I, O, U]).
