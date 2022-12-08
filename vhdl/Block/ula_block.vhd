-- unidade lógica aritimética (ULA) utilizando block

LIBRARY ieee;
USE ieee.numeric_bit.ALL;

ENTITY ula_block IS
    PORT (
        Ai, Bi : IN unsigned (7 DOWNTO 0);
        S1, S0, M : IN BIT;
        Fi : OUT unsigned (7 DOWNTO 0)

    );
END ula_block;

ARCHITECTURE main OF ula_block IS

    SIGNAL H, G : unsigned(7 DOWNTO 0);

BEGIN

    --unidade aritimética
    arith_unit : BLOCK
        SIGNAL sel_arith : bit_vector(1 DOWNTO 0);
    BEGIN
        sel_arith <= S1 & S0;
        WITH sel_arith SELECT

            G <= Ai + Bi WHEN "00",
            Ai - Bi WHEN "01",
            Ai + x"01" WHEN "10",
            Ai - x"01" WHEN OTHERS;

    END BLOCK arith_unit;

    --unidade lógica
    logic_unit : BLOCK
        SIGNAL sel_logic : bit_vector(1 DOWNTO 0);
    BEGIN
        sel_logic <= S1 & S0;
        WITH sel_logic SELECT
            H <= Ai AND Bi WHEN "00",
            Ai OR Bi WHEN "01",
            Ai XOR Bi WHEN "10",
            NOT Ai WHEN OTHERS;

    END BLOCK logic_unit;

    Fi <= G WHEN M = '1' ELSE H;

END main;