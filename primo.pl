%% Conocer si un numero es primo o no.
%% Escalante Hernandez Kevin Ulises 21211937
%% Programaci√≥n L√≥gica y Funcional
%% Maestro: Rene Solis Reyes

/*
def es_primo(n):
    # Caso base: 0 y 1 no son primos.
    if n < 2:
        return False

    # Un n˙mero es primo si no tiene divisores distintos de 1 y sÌ mismo.
    return not tiene_divisor(n, 2)

def tiene_divisor(n, d):
    # Verifica si hay un divisor entre 2 y la raÌz cuadrada de N.
    if d * d > n:
        return False
    if n % d == 0:
        return True
    return tiene_divisor(n, d + 1)
/*
% Caso base: 0 y 1 no son primos.
primo(0) :- fail.
primo(1) :- fail.

% Un n√∫mero es primo si no tiene divisores distintos de 1 y s√≠ mismo.
primo(N) :- 
    N > 1,
    \+ tiene_divisor(N, 2).

% Verifica si hay un divisor entre 2 y la ra√≠z cuadrada de N.
tiene_divisor(N, D) :- 
    D * D =< N,
    (N mod D =:= 0; 
    D1 is D + 1, 
    tiene_divisor(N, D1)).
