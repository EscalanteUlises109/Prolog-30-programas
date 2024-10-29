% Declarar predicados como discontiguos (si prefieres mantener el orden actual)

/*
Definición de hechos usando diccionarios
padres = {
    'norma': 'luis',
    'francisca': 'luis',
    'marisol': 'luis',
    'luis_jr': 'luis',
    'joel': 'luis',
    'domy': 'luis',
    'aurora': 'luis',
    'kenia': 'luis',
    'nacho': 'luis',
    'ulises': 'luis',
    'pita': 'luis',
    'katia': 'ulises',
    'aron': 'ulises'
}

madres = {
    'norma': 'alejandra',
    'francisca': 'alejandra',
    'marisol': 'alejandra',
    'luis_jr': 'alejandra',
    'joel': 'alejandra',
    'domy': 'alejandra',
    'aurora': 'alejandra',
    'kenia': 'alejandra',
    'nacho': 'alejandra',
    'ulises': 'alejandra',
    'pita': 'alejandra',
    'martin': 'norma',
    'oscar': 'norma',
    'america': 'norma',
    'kevin': 'domy',
    'emmanuel': 'domy'
}

# Reglas

# Verifica si dos personas son hermanos
def son_hermanos(X, Y):
    if X == Y:
        return False
    return padres.get(X) == padres.get(Y) and madres.get(X) == madres.get(Y)

# Verifica si alguien es abuelo de otra persona
def es_abuelo(A, B):
    for hijo in padres:
        if padres.get(hijo) == A and (padres.get(B) == hijo or madres.get(B) == hijo):
            return True
    return False

# Verifica si alguien es abuela de otra persona
def es_abuela(A, B):
    for hijo in madres:
        if madres.get(hijo) == A and (padres.get(B) == hijo or madres.get(B) == hijo):
            return True
    return False
/*

:- discontiguous padre/2.
:- discontiguous madre/2.

% DefiniciÃ³n de hechos agrupados por predicado
% Todos los hechos de padre/2 juntos
padre(luis, norma).
padre(luis, francisca).
padre(luis, marisol).
padre(luis, luis_jr).
padre(luis, joel).
padre(luis, domy).
padre(luis, aurora).
padre(luis, kenia).
padre(luis, nacho).
padre(luis, ulises).
padre(luis, pita).
padre(ulises, katia).
padre(ulises, aron).

% Todos los hechos de madre/2 juntos
madre(alejandra, norma).
madre(alejandra, francisca).
madre(alejandra, marisol).
madre(alejandra, luis_jr).
madre(alejandra, joel).
madre(alejandra, domy).
madre(alejandra, aurora).
madre(alejandra, kenia).
madre(alejandra, nacho).
madre(alejandra, ulises).
madre(alejandra, pita).
madre(norma, martin).
madre(norma, oscar).
madre(norma, america).
madre(domy, kevin).
madre(domy, emmanuel).

% Reglas
% Definir que dos personas son hermanos si comparten el mismo padre y la misma madre
hermano(X, Y) :- 
    padre(P, X), padre(P, Y),
    madre(M, X), madre(M, Y),
    X \= Y.

% Definir que alguien es abuelo si es padre de alguien que a su vez es padre/madre de otra persona
abuelo(A, B) :- 
    padre(A, X),
    (padre(X, B); madre(X, B)).

% Definir que alguien es abuela si es madre de alguien que a su vez es padre/madre de otra persona
abuela(A, B) :-
    madre(A, X),
    (padre(X, B); madre(X, B)).