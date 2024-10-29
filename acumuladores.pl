%% Invertir lista usando acumuladores.
%% Escalante Hernandez Kevin Ulises 21211937
%% ProgramaciÃ³n LÃ³gica y Funcional
%% Maestro: Rene Solis Reyes
/*
def invertir_acum(lista):
    # Función auxiliar para la inversión acumulativa
    def invertir_acum_aux(cola, acumulador):
        if not cola:  # Caso base: si la lista está vacía
            return acumulador
        else:
            # Agregar la cabeza al acumulador y continuar con la cola
            cabeza, *nueva_cola = cola
            return invertir_acum_aux(nueva_cola, [cabeza] + acumulador)

    return invertir_acum_aux(lista, [])
/*
invertir_acum(Lista, Inversa) :- 
    invertir_acum(Lista, [], Inversa).

invertir_acum([], Acumulador, Acumulador).
invertir_acum([Cabeza|Cola], Acumulador, Inversa) :- 
    invertir_acum(Cola, [Cabeza|Acumulador], Inversa).
