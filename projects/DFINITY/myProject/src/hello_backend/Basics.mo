/* Identificadores son alfanuméricos,
    Comienzan con una letra y pueden contener guiones bajos.
*/
<id> ::= Letter (Letter | Digit | _)*
Letter ::= A..Z | a..Z
Digit :: 0..9

/* 
    Números enteros se escriben como decimales o hexadecimales
    Los dígitos subsiguientes pueden tener como prefijo un único guión bajo
*/

digit ::= ["0"-"9"];
hexDigit ::= ["0"-"9"-"a"-"f"-"A"-"F"];
num ::= digit("_"? digit)*
hexnum ::= hexDigit("_"? hexDigit)*
nat ::= num | "0x" hexnum

/* 
    Los literales de coma flotante se excribne en 0x notación científica decimal o hexadecimal
*/

let franc = num;
let hexFranc = hexnum;
let float = 
    num "." frac?
|   num ("." frac?)? ("e" | "E") sign? num
|   "0x" hexnum "." hexFranc?
|   "0x" hexnum ("." hexFranc?)? ("p" | "P") sign? num

/* 
    Characters
    Es una comilla simple ´ delimitada
*/

/* 
    Text:
    is " una secuencia delimitada de caracteres
*/

text ::= `"` character* `"`

/* 
    Literals:
    Son valores constantes. La validez sintáctica de un literal depende
    de la precision del tipo en el que se utiliza
*/

<lit> ::=
    <nat>
    <float>
    <char>
    <text>

A // Aritmética --> Operaciones aritméticas
L // Lógico --> Operaciones lógicas/booleanas
B // bit a bit --> Operaciones bit a bit y de ajuste
O // Ordenado --> Comparación
T // Texto --> Concatenación

-
+
^
!