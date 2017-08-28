
%{
#include <stdio.h>
%}

ALFA [a-zA-Z0-9]
ESP [\.\-\_]
TEXTO ({ALFA}|{ESP})
DOMINIO [.]{ALFA}+
EMAIL {TEXTO}+[@]{TEXTO}+{DOMINIO}{0,2}

%%

{EMAIL} {
	printf("%s\n",yytext); //comentario
}

. ;
\n ;

%%

int main() {
  yylex();
  return 0;
}
