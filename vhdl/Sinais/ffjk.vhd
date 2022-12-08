--utilização de sinais

ENTITY ffjk IS
    PORT (
        j, k, clk : IN BIT;
        q, q_bar : BUFFER BIT

    );

END ffjk;

ARCHITECTURE main OF ffjk IS

    SIGNAL a : bit_vector(0 TO 5);

BEGIN

    a(0) <= NOT (q_bar AND j AND clk);
    a(1) <= NOT (q AND k AND clk);
    a(2) <= a(0) NAND a(3);
    a(3) <= a(1) NAND a(2);
    a(4) <= a(2) NAND(NOT clk);
    a(5) <= a(3) NAND(NOT clk);
    q <= a(4) NAND q_bar;
    q_bar <= a(5) NAND q;

END main;