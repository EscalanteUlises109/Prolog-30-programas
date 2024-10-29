
%% Programa dirigido a sumar todos los dígitos de una lista.
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes
/*
def suma_lista(lista):
    # Calcula la suma de los elementos en una lista
    return sum(lista)

 Uso
print(suma_lista([1, 2, 3]))   
/*


% Caso base: la suma de una lista vacía es 0.
suma_lista([], 0).

% Caso recursivo: la suma de la lista es el primer elemento más la suma del resto.
suma_lista([Cabeza|Cola], Suma) :-
    suma_lista(Cola, SumaCola),
    Suma is Cabeza + SumaCola.
