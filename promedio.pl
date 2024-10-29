%% Promedio de una lista.
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

% Promedio de una lista vacía es 0.
promedio([], 0).

% Caso recursivo: calcula la suma y el número de elementos.
promedio(Lista, Promedio) :-
    contar(Lista, N),
    suma_lista(Lista, Suma),
    N > 0,
    Promedio is Suma / N.

% Función para contar elementos
contar([], 0).
contar([_|Cola], N) :-
    contar(Cola, NCola),
    N is NCola + 1.

% Función para sumar elementos
suma_lista([], 0).
suma_lista([Cabeza|Cola], Suma) :-
    suma_lista(Cola, SumaCola),
    Suma is Cabeza + SumaCola.
