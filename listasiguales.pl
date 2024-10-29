%% Listas Iguales.
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

% Dos listas vacías son iguales.
son_iguales([], []).

% Dos listas son iguales si la cabeza y la cola son iguales.
son_iguales([Cabeza1|Cola1], [Cabeza2|Cola2]) :-
    Cabeza1 = Cabeza2,
    son_iguales(Cola1, Cola2).
