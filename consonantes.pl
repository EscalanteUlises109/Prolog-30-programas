%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes
%% Consonantes de una lista de caracteres

% Caso base: la lista vacía tiene 0 consonantes.
contar_consonantes([], 0).

% Verifica si la cabeza es consonante y cuenta.
contar_consonantes([Cabeza|Cola], N) :- 
    es_consonante(Cabeza), 
    contar_consonantes(Cola, NCola), 
    N is NCola + 1.

% Si no es consonante, solo cuenta la cola.
contar_consonantes([Cabeza|Cola], N) :- 
    \+ es_consonante(Cabeza), 
    contar_consonantes(Cola, N).

% Define qué es una consonante.
es_consonante(X) :- 
    member(X, [b, c, d, f, g, h, j, k, l, m, n, p, q, r, s, t, v, w, x, y, z,
                B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y, Z]).

