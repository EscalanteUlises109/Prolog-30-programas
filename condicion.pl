%% Elementos que cumplen una condición dada.
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

/*
def filtrar(predicado, lista):
    # Caso base: filtrar una lista vac�a da una lista vac�a
    if not lista:
        return []
    
    # Caso recursivo: si el elemento cumple la condici�n, se incluye en el resultado
    cabeza = lista[0]  # Toma el primer elemento (cabeza)
    cola = lista[1:]   # Toma el resto de la lista (cola)

    if predicado(cabeza):
        return [cabeza] + filtrar(predicado, cola)
    else:
        # Si no cumple la condici�n, se omite
        return filtrar(predicado, cola)
/*


% Caso base: filtrar una lista vacía da una lista vacía.
filtrar(_, [], []).
% Caso recursivo: si el elemento cumple la condición, se incluye en el resultado.
filtrar(Predicado, [Cabeza|Cola], [Cabeza|Resultado]) :-
    call(Predicado, Cabeza),
    filtrar(Predicado, Cola, Resultado).

% Si no cumple la condición, se omite.
filtrar(Predicado, [Cabeza|Cola], Resultado) :-
    \+ call(Predicado, Cabeza),
    filtrar(Predicado, Cola, Resultado).
