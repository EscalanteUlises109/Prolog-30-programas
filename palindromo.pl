%% Saber si es palíndromo 
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

% Un palíndromo es una lista que es igual a su reverso.
palindromo(Lista) :- 
    reverso(Lista, Lista).

% Reverso de la lista.
reverso([], []).
reverso([Cabeza|Cola], Inversa) :- 
    reverso(Cola, ColaInversa), 
    append(ColaInversa, [Cabeza], Inversa).
