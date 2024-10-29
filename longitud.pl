%% Calcular la longitud de una lista
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

%Caso base: la longitud de una lista vacía es 0.
longitud([], 0).

% Caso recursivo: la longitud es 1 más la longitud de la cola.
longitud([_|Cola], N) :- 
    longitud(Cola, NCola), 
    N is NCola + 1.