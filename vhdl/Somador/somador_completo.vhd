-- somador completo

ENTITY somador_completo IS
    PORT (
        A, B : IN BIT; --entradas
        TE : IN BIT; -- transporte de entrada
        S : OUT BIT; --soma
        TS : OUT BIT --transporte de saida

    );
END somador_completo;

ARCHITECTURE main OF somador_completo IS
BEGIN
    S <= A XOR B XOR TE;
    TS <= (A AND B) OR (A AND TE) OR (B AND TE);
END main;