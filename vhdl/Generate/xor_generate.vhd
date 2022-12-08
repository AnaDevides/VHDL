-- for generate
-- porta XOR de n entradas

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY xor_generate IS
    GENERIC (
        n : NATURAL := 8 -- número de entradas
    )
    PORT (
        i : IN STD_LOGIC_VECTOR(1 TO n);
        o : OUT ste_logic

    );
END xor_generate;

ARCHITECTURE main OF xor_generate IS

    SIGNAL a : STD_LOGIC_VECTOR(1 TO n);

BEGIN

    o <= a(n);
    a(1) <= i(1);

    g1 : FOR x IN 2 TO n GENERATE
        a(x) <= i(x) XOR a(x - 1);

    END GENERATE g1;

END main;