create database ecommerce
default character set utf8mb4
default collate utf8mb4_general_ci;

use ecommerce;

create table produtos(
id int not null auto_increment,
nome varchar (50),
preco decimal (5,2),
primary key (id) 
)default charset = utf8mb4;

alter table produtos
add column descricao text after nome;

insert into produtos values
(default, 'camiseta', 'camiseta de algodao, tamanho M', '29.90');

alter table produtos
drop column descricao;

create table clientes(
id int not null auto_increment,
nome varchar (50),
primary key (id) 
)default charset = utf8mb4;

alter table clientes
add column email varchar(50) first;

alter table clientes
add column telefone int after nome;

alter table clientes
modify column telefone bigint;

insert into clientes values
(default, 'jailson'),
(default, 'hoir');

alter table clientes
rename to usuarios;

create database livraria
default character set utf8mb4
default collate utf8mb4_general_ci;

use livraria;

create table livros(
titulo varchar (50),
autor varchar (50),
ano_publicacao year
)default charset = utf8mb4;

alter table livros 
add column id int not null auto_increment first,
add primary key (id);


alter table livros
add column estoque int (0);

insert into livros values
(default, 'antes de tudo', 'sr', '1985'),
(default, 'atualmente', 'sr', '1985'),
(default, 'depois de tudo', 'sr', '1985');

drop table livros;

create database rh
default character set utf8mb4
default collate utf8mb4_general_ci;

use rh;

create table funcionarios(
nome varchar (50),
cargo varchar (50),
salario decimal (5,2)
)default charset = utf8mb4;

alter table funcionarios 
add column id int not null auto_increment first,
add primary key (id);


insert into funcionarios values
(default, 'joao', 'repositor', '1.100');

alter table funcionarios
rename to remuneracao;

create database streaming
default character set utf8mb4
default collate utf8mb4_general_ci;

use streaming;

create table series(
id int not null auto_increment,
titulo varchar (50) unique,
genero varchar (50),
num_temps int,
primary key (id) 
)default charset = utf8mb4;

insert into series values 
(default, 'ronaldo', 'drama', '18'),
(default, 'burn knucles', 'ação', '1');

create database restaurante
default character set utf8mb4
default collate utf8mb4_general_ci;

use restaurante;

create table pratos(
nome varchar (50),
descricao varchar (50),
preco decimal (3,2)
)default charset = utf8mb4;

alter table pratos
add column id int not null auto_increment first,
add primary key (id);

describe produtos;

drop table pessoas;
drop database cadastro;