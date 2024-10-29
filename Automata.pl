%% Programa dirigido a autómatas 
%% Escalante Hernandez Kevin Ulises 21211937
%% Programación Lógica y Funcional
%% Maestro: Rene Solis Reyes

/*
def delta(estado_actual, simbolo):
    transiciones = {
        (0, 'a'): [0, 1],
        (1, 'a'): [1, 2],
        (2, 'a'): [2]
    }
    return transiciones.get((estado_actual, simbolo), [])

# Estado inicial
def inicio():
    return 0

# Verificaci�n de estado final
def final(estado):
    return estado == 0

# Funci�n para manejar la transici�n
def transicion(estado_actual, lista):
    if lista:  # Si la lista no est� vac�a
        simbolo = lista[0]
        resto = lista[1:]
        siguientes_estados = delta(estado_actual, simbolo)

        for siguiente_estado in siguientes_estados:
            print(f"{estado_actual} -> {lista}")
            if transicion(siguiente_estado, resto):
                return True
        return False
    else:  # Caso base: lista vac�a, verificar si es un estado final
        if final(estado_actual):
            print(f"{estado_actual} -> []")
            return True
        else:
            return False

# Funci�n principal para iniciar el aut�mata
def parse(lista):
    estado_inicial = inicio()
    return transicion(estado_inicial, lista)
/*
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
delta(1, a, 1).
delta(1, a, 2).
delta(2, a, 2).
delta(2, a, 2).

% Estado inicial del autómata.
inicio(0).

% Definición de los estados finales.
final(0).  


