%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes
%% reemplazar elementos de una lista

% Caso base: reemplazar en una lista vacía resulta en una lista vacía.
reemplazar([], _, _, []).

% Caso recursivo: reemplaza la cabeza si coincide, o deja la cabeza igual.
reemplazar([Elemento|Cola], Elemento, NuevoElemento, [NuevoElemento|Resultado]) :- 
    reemplazar(Cola, Elemento, NuevoElemento, Resultado).

reemplazar([Cabeza|Cola], Elemento, NuevoElemento, [Cabeza|Resultado]) :- 
    Cabeza \= Elemento, 
    reemplazar(Cola, Elemento, NuevoElemento, Resultado).
