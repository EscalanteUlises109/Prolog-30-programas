%% fibonnaci hasta n cantidad de números.
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

% Genera la secuencia de Fibonacci hasta N.
fibonacci_hasta(N, Lista) :- 
    fibonacci_hasta(0, N, [], Lista).

% Caso base: cuando se alcanza N.
fibonacci_hasta(_, N, Acumulador, Acumulador) :- 
    N < 0, !.

% Caso recursivo: añade el siguiente número de Fibonacci.
fibonacci_hasta(Ant1, Ant2, Acumulador, Lista) :- 
    Suma is Ant1 + Ant2,
    fibonacci_hasta(Ant2, Suma, [Suma|Acumulador], Lista).
