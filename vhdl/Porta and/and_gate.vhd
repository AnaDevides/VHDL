--Exemplo de uma porta AND

-- biblioteca e pacotes
-- entidade
ENTITY and_gate IS --definir entidade, nomear a entidade com o mesmo nome do arquivo
    PORT (--interfaces da porta logica
        a, b : IN BIT; --entradas e tipo de entrada
        z : OUT BIT --saida e tipo de saida
    );
END and_gate; --finaliza a interface

-- arquitetura

ARCHITECTURE main OF and_gate IS --criar arquitetura que chama main para entidade and_gate
BEGIN

    z <= a AND b;

END ARCHITECTURE main;