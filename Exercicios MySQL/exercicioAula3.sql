create database escola;

use escola;

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

-- 1. atualize a turma do aluno com id 3 para '9a'
update alunos 
set turma = '9a' 
where id = 3;

-- 2. remova todos os alunos da turma '8b'
delete from alunos 
where turma = '8b';

-- 3. remova todos os registros da tabela "alunos"
delete from alunos;

-- 4. atualize o email do aluno com nome 'joão silva' para 'joaosilva@novoemail.com'.
update alunos 
set email = 'joaosilva@novoemail.com' 
where nome = 'joão silva';

-- 5. remova o aluno com id 5
delete from alunos 
where id = 5;

-- 6. atualize a data de nascimento de todos os alunos para um ano antes.
update alunos 
set data_nascimento = date_sub(data_nascimento, interval 1 year);

-- 7. remova todos os alunos que não possuem email cadastrado.
delete from alunos 
where email is null;

-- 8. crie uma tabela "professores" com as colunas: id, nome, disciplina e salario.
create table professores (
id int primary key auto_increment,
nome varchar(255) not null,
disciplina varchar(100),
salario decimal(10, 2)
);

-- 9. insira no mínimo 4 professores na tabela "professores".
insert into professores values
('marcos andrade', 'matemática', 6000.00),
('juliana bastos', 'português', 5200.00),
('ricardo paiva', 'história', 4500.00),
('fernanda lima', 'ciências', 4800.00);

-- 10. dê um aumento de 10% para os 2 primeiros funcionários cadastrados na tabela (considerando a ordem de inserção).
update funcionarios 
set salario = salario * 1.10 
order by id asc 
limit 2;

-- 11. remova os 3 funcionários com id de 1 a 3.
delete from funcionarios 
where id in (1, 2, 3);

-- 12. atualize o cargo dos 2 funcionários com salário acima de 5000 para 'gerente'
update funcionarios 
set cargo = 'gerente' 
where salario > 5000 
limit 2;