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

Definicion de automata aquí

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

...
