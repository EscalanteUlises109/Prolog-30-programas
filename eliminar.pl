%% Eliminar duplicados.
%% Escalante Hernandez Kevin Ulises 21211937
%% Programaci√≥n L√≥gica y Funcional
%% Maestro: Rene Solis Reyes

/*
ef eliminar_duplicados(lista):
    # Caso base: de una lista vacÌa no hay duplicados.
    if lista == []:
        return []
    
    # Caso recursivo: inicializar el resultado
    resultado = []
    
    for elemento in lista:
        # Si el elemento no est· en el resultado, lo aÒadimos
        if elemento not in resultado:
            resultado.append(elemento)
    
    return resultado
/*
% Caso base: de una lista vac√≠a no hay duplicados.
eliminar_duplicados([], []).

% Caso recursivo: si la cabeza ya est√° en la cola, la omite.
eliminar_duplicados([Cabeza|Cola], [Cabeza|Resultado]) :-
    \+ member(Cabeza, Cola),
    eliminar_duplicados(Cola, Resultado).

% Si la cabeza est√° en la cola, se omite.
eliminar_duplicados([Cabeza|Cola], Resultado) :-
    member(Cabeza, Cola),
    eliminar_duplicados(Cola, Resultado).
