%% Comprobar si es lista vacia o no.
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes
/*
def es_vacia(lista):
    # Una lista vac�a es una lista vac�a
    if lista == []:
        return True
    # Una lista no vac�a tiene al menos un elemento
    else:
        return False

# Ejemplo de uso
listas = [
    [],           # Lista vac�a
    [1, 2, 3],    # Lista no vac�a
]

for lista in listas:
    if es_vacia(lista):
        print(f"La lista {lista} es vac�a.")
    else:
        print(f"La lista {lista} no es vac�a.")
/*
% Una lista vacía es una lista vacía.
es_vacia([]).

% Una lista no vacía tiene al menos un elemento.
es_vacia([_|_]) :- 
    fail.
