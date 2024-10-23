%% Determinar el factorial de un numero.
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes
/*
def factorial(n):
    if n == 0:  # Caso base
        return 1
    else:
        # Caso recursivo: n * factorial(n - 1)
        return n * factorial(n - 1)
/*


% Caso base: el factorial de 0 es 1.
factorial(0, 1).

% Caso recursivo: el factorial de N es N * factorial(N - 1).
factorial(N, Resultado) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, Resultado1),
    Resultado is N * Resultado1.
