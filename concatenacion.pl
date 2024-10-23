%% Determinar si el numero es par.
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

/*
def concatena(lista1, lista2):
    if not lista1:  # Caso base
        return lista2
    else:
        # Caso recursivo: agrega la cabeza de la primera lista a la nueva lista
        return [lista1[0]] + concatena(lista1[1:], lista2)
/*
% Caso base: concatenar una lista vacía con otra es la otra lista.
concatena([], L, L).

% Caso recursivo: agrega la cabeza de la primera lista a la nueva lista.
concatena([Cabeza|Cola1], Lista2, [Cabeza|Resultado]) :-
    concatena(Cola1, Lista2, Resultado).
