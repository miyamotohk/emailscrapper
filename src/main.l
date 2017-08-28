
%{
#include <stdio.h>
%}

ALFA [a-zA-Z0-9]
ESP [\.\-\_]
TEXTO ({ALFA}+{ESP}*{ALFA}+|{ALFA}+)
ERRO {ALFA}+{ESP}
DOMINIO [.]{ALFA}+
EMAIL {TEXTO}+[@]{TEXTO}+{DOMINIO}*
INVALIDO ({ERRO}[@]{TEXTO}+{DOMINIO}*|{TEXTO}+[@]{ERRO}{DOMINIO}*)
%%

{INVALIDO} ;

{EMAIL} {
	printf("%s\n",yytext);
}

. ;
\n ;

%%

int main() {
  yylex();
  return 0;
}
