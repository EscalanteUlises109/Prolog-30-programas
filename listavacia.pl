%% Comprobar si es lista vacia o no.
%% Escalante Hernandez Kevin Ulises 21211937
%% ProgramaciÃ³n LÃ³gica y Funcional
%% Maestro: Rene Solis Reyes
/*
def es_vacia(lista):
    # Una lista vacía es una lista vacía
    if lista == []:
        return True
    # Una lista no vacía tiene al menos un elemento
    else:
        return False

# Ejemplo de uso
listas = [
    [],           # Lista vacía
    [1, 2, 3],    # Lista no vacía
]

for lista in listas:
    if es_vacia(lista):
        print(f"La lista {lista} es vacía.")
    else:
        print(f"La lista {lista} no es vacía.")
/*
% Una lista vacÃ­a es una lista vacÃ­a.
es_vacia([]).

% Una lista no vacÃ­a tiene al menos un elemento.
es_vacia([_|_]) :- 
    fail.
