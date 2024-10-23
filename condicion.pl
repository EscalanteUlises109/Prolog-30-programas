%% Elementos que cumplen una condici贸n dada.
%% Escalante Hernandez Kevin Ulises 21211937
%% Programaci贸n L贸gica y Funcional
%% Maestro: Rene Solis Reyes

/*
def filtrar(predicado, lista):
    # Caso base: filtrar una lista vac韆 da una lista vac韆
    if not lista:
        return []
    
    # Caso recursivo: si el elemento cumple la condici髇, se incluye en el resultado
    cabeza = lista[0]  # Toma el primer elemento (cabeza)
    cola = lista[1:]   # Toma el resto de la lista (cola)

    if predicado(cabeza):
        return [cabeza] + filtrar(predicado, cola)
    else:
        # Si no cumple la condici髇, se omite
        return filtrar(predicado, cola)
/*


% Caso base: filtrar una lista vac铆a da una lista vac铆a.
filtrar(_, [], []).
% Caso recursivo: si el elemento cumple la condici贸n, se incluye en el resultado.
filtrar(Predicado, [Cabeza|Cola], [Cabeza|Resultado]) :-
    call(Predicado, Cabeza),
    filtrar(Predicado, Cola, Resultado).

% Si no cumple la condici贸n, se omite.
filtrar(Predicado, [Cabeza|Cola], Resultado) :-
    \+ call(Predicado, Cabeza),
    filtrar(Predicado, Cola, Resultado).
