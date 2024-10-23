%% Determinar si el numero es par.
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes
/*
def fibonacci(n):
    if n == 0:  # Caso base
        return 0
    elif n == 1:  # Caso base
        return 1
    else:
        # Caso recursivo: el n-�simo n�mero es la suma de los dos anteriores
        return fibonacci(n - 1) + fibonacci(n - 2)
/*

% Caso base: el primer número de Fibonacci es 0, el segundo
% es 1.
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
