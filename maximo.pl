%% Maximo de una lista.
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes
/*
def maximo(lista):
    # Caso base: el m�ximo de una lista con un solo elemento es ese elemento
    if len(lista) == 1:
        return lista[0]

    # Caso recursivo: el m�ximo de la lista es el mayor entre la cabeza y el m�ximo de la cola
    cabeza = lista[0]
    max_cola = maximo(lista[1:])
    return max(cabeza, max_cola)/*

% Caso base: el máximo de una lista con un solo elemento es ese elemento.
maximo([Unico], Unico).

% Caso recursivo: el máximo de la lista es el mayor entre la cabeza y el máximo de la cola.
maximo([Cabeza|Cola], Maximo) :-
    maximo(Cola, MaxCola),
    Maximo is max(Cabeza, MaxCola).
