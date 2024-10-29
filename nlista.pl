%% Conocer si una lista tiene n cantidad de elementos .
%% Escalante Hernandez Kevin Ulises 21211937
%% ProgramaciÃ³n LÃ³gica y Funcional
%% Maestro: Rene Solis Reyes
/*
# Caso base: la lista vacía tiene 0 elementos
def contar(lista):
    if not lista:  # Si la lista está vacía
        return 0
    else:
        # Caso recursivo: sumar 1 y contar el resto de la lista
        return 1 + contar(lista[1:])
/*

% Caso base: la lista vacÃ­a tiene 0 elementos.
contar([], 0).

% Caso recursivo: cuenta la cabeza y suma uno a la cuenta de la cola.
contar([_|Cola], N) :-
    contar(Cola, NCola),
    N is NCola + 1.
