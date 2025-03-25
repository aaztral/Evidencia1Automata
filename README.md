# Evidencia 1: Implementación de Análisis Léxico (Automata y Expresión Regular)
Entrega de la Evidencia 1 de Implementación de Métodos Computacionales.

Armando Fuentes Silva - A01712074.

## Descripción 
El lenguaje seleccionado para este proyecto fue el Elven, este es un lenguaje creado por el escritor J. R. R. Tolkien para los Elfos en su obra de ficción "El Señor de los Anillos". 

Las palabras expresadas en este proyecto son las siguientes: 
1. Ëar - Mar (Quenya)
2. Echor - Circulo exterior / Circular (Sindarin)
3. Echuir - El inicio de la primavera (Sindarin)
4. Edain - Plural de Adan {Hombre como especie} (Sindarin)
5. Edhel - Elfo (Sindarin)

Diccionario para los significados: https://www.elfdict.com/

### Definición de Automata
"Un autómata es un modelo matemático para una máquina de estado finito, en el que dada una entrada de símbolos, “salta” mediante una serie de estados de acuerdo a una función de transición (que puede ser expresada como una tabla). Esta función de transición indica a qué estado cambiar dados el estado actual y el símbolo leído." (W. C. Huanman, 2018)

Existen dos tipos de automatas finitios, no deterministico (NFA) y deterministico (DFA), un automata determinista finito es aquel que en cada estado en el que se encuentre, solo existe un estado de transición posible y a través de un solo simbolo. El no determinista es aquel que para un simbolo del alfabeto existen varios estados de transición. 

Debido a esto considero que la opción indicada es un DFA, debido a que cada palabra sigue un solo camino y estas 5 palabras son los unicos valores aceptados. Por lo que es indiicado escoger el DFA, es más sencillo, menos ambiguo y suficiente para el trabajo. 

## Modelo
El alfabeto del siguiente automata es:

_Σ = { Ë, A, R, E, C, H, O, U, I, D, N, L }_

Cualquier caracter no establecido en el alfabeto no es aceptado. 

El automata diseñado es el siguiente: 
![automata drawio](https://github.com/user-attachments/assets/8ba4b078-d321-4068-8df2-c366b915f4c9)

Otra forma de representar al automata es a través de una expresión regular, la cual también fue realizada: 

(^E)(CH(OR | UIR) | D(AIN | HEL)) | ËAR

## Implementación
Primero se crean los estados y los movimientos del automata, este necesita de un estado inicial, el estado siguiente, y el symbolo necesario para transicionar de un estado a otro.
```
move(InitialState, NextState, Symbol),
```
El estado de aceptación es Z, y es el único.
```
accepting_state(z).
```
El inicio del automata invoca la llamada recursiva para transicionar y checar el automata.
```
go_over_automaton(ListToCheck)
```
Si la lista ya fue recorrida se checa si es un estado aceptado o no.
```
automatonCheck([], InitialState)
```
Esta es la llamada recursiva del automata, la cual checa el symbolo de la lista y ejecuta un move con el estado inicial y el symbolo.
```
automatonCheck([Symbol | RestofList], InitialState)
```
## Pruebas
El automata fue implementado en Prolog y se usan 10 pruebas, 5 pruebas con un resultado esperado 'True' (las 5 palabras del lenguaje) y 5 con un resultado esperado 'False'

### Pruebas aceptadas:
1. ëar.
2. echor.
3. echuir.
4. edain.
5. edhel.

### Pruebas rechazadas:
1. automaton.
2. echol.
3. eee.
4. random.
5. ear.

Estas pruebas funcionan con una función similar a la siguiente: 
```
go_over_automaton([ë, a, r]).
```
También es posible hacer pruebas llamando a esta función y creando tu listado de simbolos. 

## Análisis
### Complejidad temporal
La complejidad temporal es el recorrido recursivo de una lista, esta checa la función move para el estado del automata, una vez que la lista se acaba el programa checa si el estado final es un estado que es aceptado o rechazado, por lo que la complejidad debería ser una de O(N) ya que se ejecutan las funciones cuantos symbolos haya en el programa sin uso de un nested loop.
