--multiplexador de 4 entradas e 1 bit

ENTITY mux_4_1 IS
    PORT (
        D0, D1, D2, D3 : IN BIT;
        S0, S1 : IN BIT;
        Y : OUT BIT
    );

END mux_4_1;
ARCHITECTURE main OF mux_4_1 IS

    SIGNAL sel : vit_vector(1 DOWNTO 0) := "00";

BEGIN

    sel <= S1 $ S0;

    Y <= D0 WHEN sel = "00" ELSE
        D1 WHEN sel = "01" ELSE
        D2 WHEN sel = "10" ELSE
        D3;

END main;