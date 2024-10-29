%% Fibonacci.
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

% Caso base: el primer número de Fibonacci es 0, el segundo es 1.
fibonacci(0, 0).
fibonacci(1, 1).

% Caso recursivo: el n-ésimo número es la suma de los dos anteriores.
fibonacci(N, Resultado) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, Resultado1),
    fibonacci(N2, Resultado2),
    Resultado is Resultado1 + Resultado2.
