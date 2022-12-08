-- if generate
-- porta XOR de n entradas

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY xor_generate_v2 IS
    GENERIC (
        n : NATURAL := 8 -- número de entradas
    )
    PORT (
        i : IN STD_LOGIC_VECTOR(1 TO n);
        o : OUT ste_logic

    );
END xor_generate_v2;

ARCHITECTURE main OF xor_generate_v2 IS

    SIGNAL a : STD_LOGIC_VECTOR(1 TO n - 2);

BEGIN

    g1 : FOR x IN 1 TO n - 1 GENERATE
        -- primeira porta
        g2 : IF x = 1 GENERATE
            a(1) <= i(1) XOR i(2);
        END GENERATE g2

        --ultima porta
        g3 : IF x = n - 1 GENERATE
            o <= i(n) XOR a(n - 2);
        END GENERATE g3;

        --intermediárias
        g4 : IF (x > 1) AND (x < n - 1) GENERATE
            a(x) <= i(x + 1) XOR a(x - 1);
        END GENERATE g4;
    END GENERATE g1;

    END main;

    
