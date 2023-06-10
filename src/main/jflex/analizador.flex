
package com.proyectoCompiladores;
import java_cup.runtime.*;

%%
%public
%class AnalizadorLexicoProyecto
%char
%line
%column
%cup

%{
    private Symbol symbol(int tipo, Object valor) {
        return new Symbol(tipo, yyline, yycolumn, valor);
    }
%}

palabra_clave = (if
                |else
                |switch
                |case
                |default
                |for
                |while
                |do
                |Scanner
                |System
                |out
                |print
                |println
                |return)

tipo = (float
        |short
        |double
        |int
        |long
        |String
        |boolean)

digito          = [0-9]+
numero          = {digito}+

identificadores = [a-zA-Z][a-zA-Z]*

espacios_blanco = [ \t\r\n]

%%
//Reglas léxicas

"("                     { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.PARENTESIS_A, yytext()); }
")"                     { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.PARENTESIS_C, yytext()); }
//"["                     { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.CORCHETE_A, yytext()); }
//"]"                     { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.CORCHETE_C, yytext()); }
"{"                     { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.LLAVE_A, yytext()); }
"}"                     { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.LLAVE_C, yytext()); }
{palabra_clave}         { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.CLAVE, yytext()); }
";"                     { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.PUNTO_COMA, yytext()); }
","                     { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.COMA, yytext()); }
//"."                     { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.PUNTO, yytext()); }
"&&"                    { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.LOGICO_Y, yytext()); }
"||"                    { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.LOGICO_O, yytext()); }
"!"                     { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.NEGACION, yytext()); }
"true"                  { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.TRUE, yytext()); }
"false"                 { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.FALSE, yytext()); }
{tipo}                  { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.TIPO, yytext()); }
//{digito}                { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.DIGITO, yytext()); }
{numero}                { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.NUMERO, yytext()); }
"="                     { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.IGUAL, yytext()); }
">"                     { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.MAYOR, yytext()); }
">="                     { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.MAYOR_IGUAL, yytext()); }
"<"                     { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.MENOR, yytext()); }
"<="                     { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.MENOR_IGUAL, yytext()); }
"=="                     { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.IGUALDAD, yytext()); }
"!="                     { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.DIFERENTE, yytext()); }




{identificadores}       { System.out.println("Se reconoce lexema: " + yytext()); return symbol(sym.IDENTIFICADOR, yytext()); }

{espacios_blanco}       {}