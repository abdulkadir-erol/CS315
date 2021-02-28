%option main
INT_TYPE int
STRING_TYPE string
BOOLEAN_TYPE boolean
RETURN return
VOID void
KUSIN kusin
KUSOUT kusout
TRUE true
FALSE false
WHILE while
FOR for
IF if
ELSE else
SEMI_COLON \;
COMMA \,
COMMENT \#[^\n]*\#
COMMENT_SIGN \#
PLUS \+
MINUS \-
MULTIPLICATION \*
DIVIDE \/
LP \(
RP \)
LCB \{
RCB \}
LT \<
GT \>
LTE \<\=
GTE \>\=
EQUAL \=
NOT_EQUAL \!\=
EQUALITY \=\=
OR \|\|
AND \&\&
DIGIT [0-9]
INT [+-]?[0-9]+
BOOLEAN TRUE|FALSE
STRING \"([^\\\"]|\\.)*\"
VAR_IDENT {LETTER}({LETTER}|{DIGIT})*
LETTER [a-zA-Z]
%%
{INT_TYPE}  printf("INT_TYPE ");
{STRING_TYPE} printf("STRING_TYPE ");
{BOOLEAN_TYPE} printf("BOOLEAN_TYPE ");
{VOID} printf("VOID_TYPE ");
{RETURN} printf("RETURN ");
{KUSIN} printf("KUSIN ");
{KUSOUT} printf("KUSOUT ");
{TRUE} printf("TRUE ");
{FALSE} printf("FALSE ");
{WHILE} printf("WHILE ");
{FOR} printf("FOR ");
{IF} printf("IF ");
{ELSE} printf("ELSE ");
{COMMA} printf("COMMA ");
{SEMI_COLON}             printf("SEMI_COLON ");
{COMMENT}      printf("COMMENT ");
{COMMENT_SIGN} printf("COM_SIGN ");
{PLUS} printf("PLUS ");
{MINUS} printf("MINUS ");
{MULTIPLICATION} printf("MUL ");
{DIVIDE} printf("DIV ");
{LP} printf("LP ");
{RP} printf("RP ");
{RCB} printf("RCB ");
{LCB} printf("LCB ");
{LT}  printf("LT ");
{GT} printf("GT ");
{LTE} printf("LTE ");
{GTE} printf("GTE ");
{EQUAL} printf("EQUAL ");
{NOT_EQUAL} printf("NE ");
{EQUALITY} printf("EQUALITY ");
{OR} printf("OR ");
{AND} printf("AND ");
{LETTER} printf("LETTER ");
{DIGIT}             printf("DIGIT ");
{INT} printf("INT ");
{BOOLEAN} printf("BOOLEAN ");
{STRING} printf("STRING ");
{VAR_IDENT} printf("VAR_ID ");
[ \t\n];
