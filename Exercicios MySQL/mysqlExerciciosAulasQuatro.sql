create database isaac
default character set utf8mb4
default collate utf8mb4_general_ci;

use isaac;

create table produto(
id int not null auto_increment,
nome varchar (50),
preco decimal (5,2),
primary key (id) 
)default charset = utf8mb4;

alter table produto
add column descricao text after nome;

truncate table produto;

insert into produto values
(default, 'maça', '2011', '24'),
(default, 'abacaxi', '2012', '25.00'),
(default, 'pera', '2013', '26.00'),
(default, 'laranja', '2014', '27.00'),
(default, 'morango', '2015', '28.00'),
(default, 'uva', '2016', '29.00');

CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(150),
    curso VARCHAR(100),
    salario DECIMAL(10,2)
);

INSERT INTO usuarios (nome, email, curso, salario) VALUES
('Maria Silva', 'maria.silva@email.com', 'Administração', 2500.00),
('Bruno Costa', 'bruno.costa@email.com', 'Engenharia', 4200.00),
('Maria Souza', 'maria.souza@email.com', 'Administração', 2700.00),
('Diego Ramos', 'diego.ramos@email.com', 'TI', 3800.00),
('Eduarda Lima', 'eduarda.lima@email.com', 'Pedagogia', 3100.00),
('Carla Souza', 'carla.souza@email.com', 'TI', 4000.00),
('Maria Clara', 'maria.clara@email.com', 'Pedagogia', 2900.00);

-- 1. Selecionando Todos os Dados de uma Tabela

select * from produto;

-- 2. Selecionando Dados por Nome Específico

SELECT * FROM produto WHERE nome in ('uva');

-- 3. Ordenando Resultados por Nome em Ordem Decrescente

select * from produto order by nome desc;

-- 4. Selecionando Colunas Específicas de uma Tabela

select nome from produto;

-- 5. Filtrando Dados por Ano Igual ou Anterior a 2016

SELECT * FROM produto WHERE descricao <= 2016;

-- 6. Usando Operadores Relacionais para Comparar Valores

SELECT * FROM produto WHERE descricao > 2012 and descricao < 2015 ;


-- 7. Filtrando Dados por Intervalo de Valores (BETWEEN)

select * from produto where descricao between 2012 and 2015;

-- 8. Combinando Condições com AND e OR

select * from produto where (descricao > 2012 and descricao < 2015) or (descricao = 2012 or descricao = 2016);
   
-- 10. Utilizando o Operador de União (|) para Combinar Resultados

select nome, email from usuarios where id <= 3 union select nome, email from usuarios where id > 3;

-- 11. Buscando Nomes que Começam com 'Maria' (LIKE e Wildcard)

select * from usuarios where nome like 'Maria_%';

-- 12. Atualizando o Email de um Aluno Específico

update usuarios set email = 'maria.silva@novoemail.com' where nome = 'Maria Silva';

-- 13. Removendo Registros Duplicados (DISTINCT)

	select distinct curso from usuarios;

-- 14. Contando o Número de Alunos por Curso (COUNT)

select curso, COUNT(*) as total_usuarios from usuarios group by curso;

-- 15. Calculando a Média, Máximo e Mínimo de Salários (AVG, MAX, MIN)

select
    avg(salario) as media_salarial,
    max(salario) as maior_salario,
    MIN(salario) as menor_salario
from usuarios;
