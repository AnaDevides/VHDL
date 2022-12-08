-- latch utilizando block

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY latch_block IS
    PORT (
        a : IN STD_LOGIC;
        sel : IN STD_LOGIC;
        x : OUT STD_LOGIC

    );
END latch_block;

ARCHITECTURE main OF latch_block IS
BEGIN

    driver : BLOCK (sel = '1')
    BEGIN
        x <= GUARDED a;
    END BLOCK driver;

END main;