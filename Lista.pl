%% Programa dirigido a verificar sin un elemento se presenta en una lista .
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes
/*
def miembro(x, lista):
    # Caso base: el elemento es el primero de la lista
    if len(lista) == 0:
        return False
    elif x == lista[0]:
        return True
    else:
        # Caso recursivo: buscar en la cola de la lista
        return miembro(x, lista[1:])
/*


% Caso base: el elemento está presente si la lista no tiene elementos.
miembro(X, [X|_]). % X es el primer elemento.

% Caso recursivo: X es miembro de la cola.
miembro(X, [_|Cola]) :- 
    miembro(X, Cola).w
