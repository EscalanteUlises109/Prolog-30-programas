%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes
%% Subconjuntos de otra

% Una lista vacía es un subconjunto de cualquier lista.
subconjunto([], _).

% Un elemento es un subconjunto si está en la lista.
subconjunto([Cabeza|Cola], Lista) :- 
    member(Cabeza, Lista), 
    subconjunto(Cola, Lista).
