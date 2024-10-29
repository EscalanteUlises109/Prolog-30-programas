%% Intersección de 2 listas.
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes.

% Caso base: la intersección con una lista vacía es vacía.
interseccion([], _, []).

% Caso recursivo: si la cabeza de la lista 1 está en la lista 2, se incluye.
interseccion([Cabeza|Cola1], Lista2, [Cabeza|Interseccion]) :-
    member(Cabeza, Lista2),
    interseccion(Cola1, Lista2, Interseccion).

% Si no está en la lista 2, se omite.
interseccion([Cabeza|Cola1], Lista2, Interseccion) :-
    \+ member(Cabeza, Lista2),
    interseccion(Cola1, Lista2, Interseccion).
