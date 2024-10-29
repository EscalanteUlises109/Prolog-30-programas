%% Producti de los elementos listados.
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes


% Caso base: el producto de una lista vacía es 1.
producto_lista([], 1).

% Caso recursivo: el producto es la cabeza multiplicada por el producto de la cola.
producto_lista([Cabeza|Cola], Producto) :-
    producto_lista(Cola, ProductoCola),
    Producto is Cabeza * ProductoCola.
