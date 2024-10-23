%% Determinar si el numero es par.
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes
/*
def par(x):
    if x == 0:  # Caso base: 0 es par
        return True
    elif x > 0:
        return par(x - 2)  # Caso recursivo: verificar si (x - 2) es par
    else:
        return False  # Los n�meros negativos no est�n considerados en este caso
/*


% Un número es par si es 0 o si es par el número menos 2.
par(0).
par(X) :- 
    X > 0, 
    Y is X - 2, 
    par(Y).
