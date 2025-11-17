DROP TABLE IF EXISTS Servicos;
DROP TABLE IF EXISTS Clientes;


CREATE TABLE Clientes (
    id_cliente VARCHAR(10), 
    nome_completo TEXT,
    telefone INT 
);

INSERT INTO Clientes (id_cliente, nome_completo, telefone) VALUES
('JOAO',' joao silva', 99887766),
('maria', 'Maria (vizinha)', 88776655),
('PEDRO', 'PEDRO SOUZA', 77665544),
('JOAO', 'Joao Silva', 99887766), 
('ana', 'Ana C.', NULL);


CREATE TABLE Servicos (
    servico_id INT,
    id_cliente_ref VARCHAR(50), 
    equipamento VARCHAR(100),
    defeito_relatado TEXT,
    data_entrada VARCHAR(20), 
    valor_servico VARCHAR(50) 
);

INSERT INTO Servicos (servico_id, id_cliente_ref, equipamento, defeito_relatado, data_entrada, valor_servico) VALUES
(1, 'JOAO', 'Notbook Dell', 'nao liga', '05/10/2024', '150.00'),
(2, 'maria', 'Celular Sansung', 'Tela quebrada', '06/10/2024', 'R$ 300,00'),
(3, 'PEDRO', 'PC Gamer', 'fonte keimada', '06-10-2024', 'R$ 100,00'),
(4, 'JOAO', 'Notbook Dell', 'formatar', '07/10/2024', '120'),
(5, 'paulo', 'Tablet', 'nao carrega', '08/10/2024', 'N/A'); 

UPDATE Servicos
SET valor_servico = REPLACE(REPLACE(TRIM(valor_servico), 'R$ ', ''), ',', '.');

UPDATE Servicos
SET valor_servico = '0.00'
WHERE valor_servico = 'N/A';

UPDATE Servicos
SET data_entrada = STR_TO_DATE(data_entrada, '%d/%m/%Y')
WHERE data_entrada LIKE '%/%/%';

UPDATE Servicos
SET data_entrada = STR_TO_DATE(data_entrada, '%d-%m-%Y')
WHERE data_entrada LIKE '%-%-%';

UPDATE Servicos SET equipamento = 'Notebook Dell' WHERE equipamento = 'Notbook Dell';
UPDATE Servicos SET equipamento = 'Celular Samsung' WHERE equipamento = 'Celular Sansung';
UPDATE Servicos SET defeito_relatado = 'fonte queimada' WHERE defeito_relatado = 'fonte keimada';

INSERT INTO Clientes (id_cliente, nome_completo, telefone) 
VALUES ('paulo', 'Paulo (Pendente)', NULL);


UPDATE Clientes SET id_cliente = 'JOAO_OK' 
WHERE id_cliente = 'JOAO' AND nome_completo = ' joao silva';

UPDATE Servicos SET id_cliente_ref = 'JOAO_OK' 
WHERE id_cliente_ref = 'JOAO';

DELETE FROM Clientes 
WHERE id_cliente = 'JOAO';

UPDATE Clientes
SET nome_completo = UPPER(TRIM(nome_completo));

CREATE TABLE Clientes_NOVA (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(255) NOT NULL,
    telefone VARCHAR(20),
    id_cliente_original VARCHAR(10) UNIQUE 
);


INSERT INTO Clientes_NOVA (nome_completo, telefone, id_cliente_original)
SELECT nome_completo, telefone, id_cliente
FROM Clientes;

CREATE TABLE Servicos_NOVA (
    servico_id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente_ref INT NOT NULL,
    equipamento VARCHAR(100),
    defeito_relatado TEXT,
    data_entrada DATE,
    valor_servico DECIMAL(10, 2)
);

INSERT INTO Servicos_NOVA (servico_id, id_cliente_ref, equipamento, defeito_relatado, data_entrada, valor_servico)
SELECT
    S.servico_id,
    C_NOVA.id_cliente, 
    S.equipamento,
    S.defeito_relatado,
    CAST(S.data_entrada AS DATE), 
    CAST(S.valor_servico AS DECIMAL(10, 2)) 
FROM Servicos S
JOIN Clientes_NOVA C_NOVA ON S.id_cliente_ref = C_NOVA.id_cliente_original;

DROP TABLE Servicos;
DROP TABLE Clientes;

RENAME TABLE Clientes_NOVA TO Clientes;
RENAME TABLE Servicos_NOVA TO Servicos;

ALTER TABLE Servicos
ADD CONSTRAINT fk_servicos_clientes
FOREIGN KEY (id_cliente_ref)
REFERENCES Clientes(id_cliente);

ALTER TABLE Clientes
DROP COLUMN id_cliente_original;

SELECT 'BANCO DE DADOS CORRIGIDO COM SUCESSO!' AS Status;

SELECT * FROM Clientes;

SELECT * FROM Servicos;