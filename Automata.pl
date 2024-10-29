%% Programa dirigido a autómatas 
%% Escalante Hernández Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: René Solis Reyes

% El predicado parse recibe una lista de transiciones y verifica si es aceptada por el autómata.
parse(L) :- 
    inicio(S),            % Se obtiene el estado inicial
    transicion(S, L).     % Se inicia la transición con la lista L

% Transición de X -----> a ----> Y
% Si hay una transición disponible, se toma el primer elemento de la lista [A|B] y se sigue.
transicion(X, [A|B]) :- 
    delta(X, A, Y),       % Delta nos da el siguiente estado Y
    write(X),             % Se imprime el estado actual
    write(' -> '),        % Se imprime el símbolo de transición
    write([A|B]),         % Se imprime la lista actual de entrada
    nl,                   % Salto de línea
    transicion(Y, B).     % Se continúa con el estado siguiente y la cola de la lista

% Caso base: cuando la lista está vacía, se verifica si el estado actual es final.
transicion(X, []) :-  
    final(X),             % Si estamos en un estado final
    write(X),             % Se imprime el estado final
    write(' -> '),        
    write([]),            % Se imprime la lista vacía
    nl.

% Definición de las transiciones (delta): para cada par (estado actual, símbolo), define el siguiente estado.
delta(0, a, 1).
delta(0, a, 0).
delta(1,
