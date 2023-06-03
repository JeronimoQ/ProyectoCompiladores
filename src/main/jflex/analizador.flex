//User Code
package com.proyectoCompiladores;

%%
//Opciones y definiciones Regulares
%public
%class AnalizadorLexicoProyecto
%char
%line
%column
%standalone

//Definición regular
palabra_clave = (float|double|int|long|short|String|boolean|if|else|switch|case|default|for|while|do|Scanner|System|out|print|println|return|true|false)
digitos = [0-9]
identificadores = [a-zA-Z][a-zA-Z0-9]*
literales = ("([^\"\\\\\n]|(\\\\.))*")
operador_aritmetico = ([+\-*/%])
operador_relacional = ([=!]=|[<>]=?|[<>])
//tipo_de_dato = (String)
parentesis_apertura = [(]
parentesis_cierre = [)]
llaves_apertura = [{]
llaves_cierre = [}]
corchetes= [[]]
coma = [,]
punto = [.]
punto_y_coma = [;]
asignacion = [=]
suma = [+]
resta = [-]
multiplicacion = [*]
division = [/]
potencia = ["\\^"]
mayor_que = [>]
mayor_o_igual_que = [>=]
menor_que = [<]
menor_o_igual_que = [<=]
igual = [==]
diferente = [!=]
logico_y = "&&"
logico_o = [|]
negacion = [!]
espacios_blanco = [\r|\n|\r\n| |\t]

%%
//Reglas léxicas
{palabra_clave} {System.out.println(" palabra clave: " + yytext()
                                     + " Columna: " + yychar
                                     + " fila: " + yyline);}

{digitos} {System.out.println(" digito: " + yytext()
                                     + " Columna: " + yychar
                                     + " fila: " + yyline);}

{identificadores} {System.out.println(" identificador: " + yytext()
                                     + " Columna: " + yychar
                                     + " fila: " + yyline);}
{literales} {System.out.println(" literal: " + yytext()
                                     + " Columna: " + yychar
                                     + " fila: " + yyline);}

{operador_aritmetico} {System.out.println(" operador aritmetico: " + yytext()
                                     + " Columna: " + yychar
                                     + " fila: " + yyline);}

{operador_relacional} {System.out.println(" operador relacional: " + yytext()
                                     + " Columna: " + yychar
                                     + " fila: " + yyline);}


{parentesis_apertura} {System.out.println(" parentesis apertura: " + yytext()
                                     + " Columna: " + yychar
                                     + " fila: " + yyline);}

{parentesis_cierre} {System.out.println(" parentesis cierre: " + yytext()
                                     + " Columna: " + yychar
                                     + " fila: " + yyline);}

{llaves_apertura} {System.out.println(" llaves apertura: " + yytext()
                                      + " Columna: " + yychar
                                      + " fila: " + yyline);}

{llaves_cierre} {System.out.println(" llaves cierre: " + yytext()
                                      + " Columna: " + yychar
                                      + " fila: " + yyline);}

{corchetes} {System.out.println(" corchetes: " + yytext()
                                      + " Columna: " + yychar
                                      + " fila: " + yyline);}

{coma} {System.out.println(" coma: " + yytext()
                                      + " Columna: " + yychar
                                      + " fila: " + yyline);}

{punto} {System.out.println(" punto: " + yytext()
                                      + " Columna: " + yychar
                                      + " fila: " + yyline);}

{punto_y_coma} {System.out.println(" punto y coma: " + yytext()
                                      + " Columna: " + yychar
                                      + " fila: " + yyline);}

{asignacion} {System.out.println(" asignacion: " + yytext()
      + " Columna: " + yychar
      + " fila: " + yyline);}

{suma} {System.out.println(" suma: " + yytext()
      + " Columna: " + yychar
      + " fila: " + yyline);}

{resta} {System.out.println(" resta: " + yytext()
      + " Columna: " + yychar
      + " fila: " + yyline);}


{multiplicacion} {System.out.println(" multiplicacion: " + yytext()
      + " Columna: " + yychar
      + " fila: " + yyline);}

{division} {System.out.println(" division: " + yytext()
      + " Columna: " + yychar
      + " fila: " + yyline);}

{potencia} {System.out.println(" potencia: " + yytext()
      + " Columna: " + yychar
      + " fila: " + yyline);}

{mayor_que} {System.out.println(" mayor_que: " + yytext()
      + " Columna: " + yychar
      + " fila: " + yyline);}

{mayor_o_igual_que} {System.out.println(" mayor_o_igual_que: " + yytext()
      + " Columna: " + yychar
      + " fila: " + yyline);}

{menor_que} {System.out.println(" menor_que: " + yytext()
      + " Columna: " + yychar
      + " fila: " + yyline);}

{menor_o_igual_que} {System.out.println(" menor_o_igual_que: " + yytext()
      + " Columna: " + yychar
      + " fila: " + yyline);}

{igual} {System.out.println(" igual: " + yytext()
      + " Columna: " + yychar
      + " fila: " + yyline);}

{diferente} {System.out.println(" diferente: " + yytext()
      + " Columna: " + yychar
      + " fila: " + yyline);}


{logico_y} {System.out.println(" logico_y: " + yytext()
      + " Columna: " + yychar
      + " fila: " + yyline);}

{logico_o} {System.out.println(" logico_o: " + yytext()
      + " Columna: " + yychar
      + " fila: " + yyline);}

{negacion} {System.out.println(" negacion: " + yytext()
       + " Columna: " + yychar
       + " fila: " + yyline);}



//{tipo_de_dato} {System.out.println(" Tipo de dato: " + yytext()
                                   //  + " Columna: " + yychar
                                   //  + " fila: " + yyline);}

{espacios_blanco}   { }
