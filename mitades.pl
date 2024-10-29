%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes
%% Mitades de una lista

% Divide la lista en dos mitades.
dividir_lista(Lista, PrimeraMitad, SegundaMitad) :-
    length(Lista, Longitud),
    Mitad is Longitud // 2,
    length(PrimeraMitad, Mitad),
    append(PrimeraMitad, SegundaMitad, Lista).
