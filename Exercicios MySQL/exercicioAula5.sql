drop database if exists escola_db;
create database escola_db;
use escola_db;

create table alunos (
id int primary key auto_increment,
nome varchar(255) not null,
turma varchar(10),
email varchar(255),
data_nascimento date
);

create table funcionarios (
id int primary key auto_increment,
nome varchar(255) not null,
cargo varchar(100),
salario decimal(10, 2)
);

create table professores (
id int primary key auto_increment,
nome varchar(255) not null,
disciplina varchar(100),
salario decimal(10, 2)
);

insert into alunos values
('ana souza', '8a', 'ana@email.com', '2010-05-15'),
('bruno costa', '8b', 'bruno@email.com', '2011-02-20'),
('carla dias', '8a', 'carla@email.com', '2010-11-30'),
('joão silva', '8b', 'joao@email.com', '2011-01-10'),
('maria oliveira', '9a', 'maria@email.com', '2009-07-05'),
('pedro martins', '8b', null, '2011-03-12');

insert into funcionarios values
('carlos borges', 'secretário', 3500.00),
('diana moreira', 'coordenadora', 5500.00),
('eva fernandes', 'diretora', 7000.00),
('fábio guedes', 'inspetor', 2800.00);

insert into professores values
('marcos andrade', 'matemática', 6000.00),
('juliana bastos', 'português', 5200.00),
('ricardo paiva', 'história', 4500.00),
('fernanda lima', 'ciências', 4800.00);



-- 1. selecionando todos os dados
select * from alunos;

-- 2. selecionando dados por nome específico
select * from alunos where nome = 'ana souza';

-- 3. ordenando resultados por nome em ordem decrescente
select nome, turma from alunos order by nome desc;

-- 4. selecionando colunas específicas
select nome, turma, email from alunos;

-- 5. filtrando dados por ano igual ou anterior a 2016
select nome, data_nascimento from alunos where year(data_nascimento) <= 2016;

-- 6. usando operadores relacionais para comparar valores
select nome, salario from funcionarios where salario > 5000.00;

-- 7. filtrando dados por intervalo de valores (between)
select nome, salario from funcionarios where salario between 4000.00 and 6000.00;

-- 8. combinando condições com and e or
select nome, turma, data_nascimento from alunos 
where turma = '8a' and data_nascimento < '2010-01-01';

-- 9. selecionando registros que contém um valor específico (in)
select nome, turma from alunos where turma in ('8a', '9a');

-- 10. utilizando o operador de união (union) para combinar resultados
select nome from alunos
union
select nome from professores;

-- 11. buscando nomes que começam com 'maria' (like e wildcard)
select nome from alunos where nome like 'maria%';

-- 13. removendo registros duplicados (distinct)
select distinct turma from alunos;

-- 14. contando o número de alunos por curso (count)
select turma, count(id) as total_alunos from alunos group by turma;

-- 15. calculando a média, máximo e mínimo de salários (avg, max, min)
select 
    avg(salario) as media_salario,
    max(salario) as maximo_salario,
    min(salario) as minimo_salario
from funcionarios;