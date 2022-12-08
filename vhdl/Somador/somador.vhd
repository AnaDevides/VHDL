--somador de 4 bits

ENTITY somador IS
    PORT (
        a, b : IN INTEGER RANGE 0 TO 15;
        z : OUT INTEGER RANGE 0 TO 15
    );
END somador;

ARCHITECTURE main OF somador IS
BEGIN

    z <= a + b;
END main;