-- constante em um incrementador

ENTITY incrementador IS
    PORT (
        data_in : IN INTEGER;
        data_out : OUT INTEGER

    );

END incrementador;

ARCHITECTURE main OF incrementador IS
    CONSTANT valor : INTEGER := 3;

BEGIN

    data_out <= data_in + valor;

END main;