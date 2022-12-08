--unidade logica aritimética  (ULA)

LIBRARY ieee;
USE ieee.numeric_bit.ALL;

ENTITY ula IS
    PORT (
        Ai, Bi : IN unsigned (7 DOWNTO 0);
        S1, S0, M : IN BIT;
        Fi : OUT unsigned (7 DOWNTO 0)

    );
END ula;

ARCHITECTURE main OF ula IS

    SIGNAL H, G : unsigned(7 DOWNTO 0);
    SIGNAL sel : bit_vector(1 DOWNTO 0);

BEGIN

    sel <= S1 & S0;

    --unidade aritimética
    WITH sel SELECT
        G <= Ai + Bi WHEN "00",
        Ai - Bi WHEN "01",
        Ai + x"01" WHEN "10",
        Ai - x"01" WHEN OTHERS;

    --unidade lógica
    WITH sel SELECT
        H <= Ai AND Bi WHEN "00",
        Ai OR Bi WHEN "01",
        Ai XOR Bi WHEN "10",
        NOT Ai WHEN OTHERS;

    --saída

    Fi <= G WHEN M = '1' ELSE H;

END main;