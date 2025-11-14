create database escola
default character set utf8mb4
default collate utf8mb4_general_ci; -- criar banco de dados

use escola;

create table alunos(
id int not null auto_increment,
nome varchar(50),
nascimento date,
turma char (2),
email varchar (50),
primary key (id) 
)default charset = utf8mb4;

insert into alunos value
(default, 'João Silva', 2005-03-15, '8A', 'Joao.silva@email.com', default);


create table professores(
id int not null auto_increment,
nome varchar (50),
diciplina varchar (50),
salario decimal(5,2),
primary key (id)
)default charset = utf8mb4;
insert into professores values
(default, 'carla', 'matemática', 'F', '956.53', default),
(default, 'joelma', 'ingles', 'F', '960.20', default);

create database biblioteca
default character set utf8mb4
default collate utf8mb4_general_ci; 

use biblioteca;

create table livros(
id int not null auto_increment,
titulo varchar (50),
autor varchar (50),
ano_publicado year,
disponivel boolean,
primary key (id)
)default charset = utf8mb4;

desc livros;
select * from livros;

insert into livros values
(default, 'O principe', 'Nicolau maquiavel', 1965, true),
(default, 'Pequeno principe', 'Antoine', 1986, true),
(default, 'Turma da monica', 'Mauricio de souza', 2007, false);

create database empresa 
default character set utf8mb4
default collate utf8mb4_general_ci; 

use empresa;

create table funcionarios(
id int not null auto_increment,
nome varchar (50),
cargo varchar (30),
salario decimal (6,2),
data_admissao date,
primary key (id)
)default charset = utf8mb4;

desc funcionarios;
select * from funcionarios;

insert into funcionarios values 
(default, 'Mauricio', 'Repositor', '985.00', '2024-12-25');

create database cinema 
default character set utf8mb4
default collate utf8mb4_general_ci;

use cinema;

create table filmes(
id int not null auto_increment,
titulo varchar (50),
diretor varchar (30),
genero varchar (40),
duracao time,
classificacao_etaria int,
primary key (id)
)default charset = utf8mb4;

drop table filmes;
drop database cinema;

desc filmes;
select * from filmes;

insert into filmes values
(default, 'Interestelar', 'cristopher nolan', 'ficção cientifica', '013005', '14'),
(default, '300', 'leonidas', 'Guerra', '015002', '18');

create database musica
default character set utf8mb4
default collate utf8mb4_general_ci;

use musica;

create table albuns(
id int not null auto_increment,
nome varchar (30),
artista varchar (50),
ano year,
genero varchar (40),
primary key (id)
)default charset = utf8mb4;