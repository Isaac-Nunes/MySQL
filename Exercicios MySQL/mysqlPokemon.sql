create database Pokemons
default character set utf8mb4
default collate utf8mb4_general_ci; -- criar banco de dados

use Pokemons;

create table fogo(
id int not null auto_increment,
nome varchar(50),
peso decimal(5,2),
altura decimal (3,2),
evolui varchar (50),
primary key (id) 
)default charset = utf8mb4;

desc fogo;
select * from fogo;

drop database pokemons;

insert into fogo value
(default, 'Charmander', '18.74', '0.61', 'Charmeleon'),
(default, 'Charmeleon', '41.89', '1.09', 'Charizard'),
(default, 'Charizard', '90.5', '1.70', 'N/A');

create table agua(
id int not null auto_increment,
nome varchar(50),
peso decimal(5,2),
altura decimal (3,2),
evolui varchar (50),
primary key (id) 
)default charset = utf8mb4;

desc agua;
select * from agua;

insert into agua values

(default, 'Squirtle', '9.0', '0.51', 'Wartortle'),
(default, 'Wartortle', '22.5', '0.99', 'Blastoise'),
(default, 'Blastoise', '85.5', '1.60', 'N/A');


create table planta(
id int not null auto_increment,
nome varchar(50),
peso decimal(5,2),
altura decimal (3,2),
evolui varchar (50),
primary key (id) 
)default charset = utf8mb4;

desc planta;
select * from planta;

insert into planta values 

(default, 'Bulbasaur',  '6.9', '0.71', 'Ivysaur'),
(default, 'Ivysaur', '13.0', '0.99', 'Venusaur'),
(default, 'Venusaur', '100.00', '2.01', 'N/A');


-- -------------------------------------------------------------------------------------------------------------------------

create database Personagens
default character set utf8mb4
default collate utf8mb4_general_ci; 

use Personagens;

create table personagens(
id int not null auto_increment,
nome varchar (50),
idade int,
cidade varchar(50),
altura decimal (3,2),
primary key (id)
)default charset = utf8mb4;

desc personagens;
select * from personagens;

insert into personagens values
(default, 'Ash ket', '14', 'Pallet', '1.71'),
(default, 'Misty', '15', 'Cerulean', '1.60'),
(default, 'Brock', '16', 'Pewter', '1.75');

-- -----------------------------------------------------------------------------------------------------------------------------

create database Cidades 
default character set utf8mb4
default collate utf8mb4_general_ci; 

use Cidades;

create table cidades(
id int not null auto_increment,
nome varchar (50),
regiao varchar (50),
geografia varchar (30),
primary key (id)
)default charset = utf8mb4;

desc cidades;
select * from cidades;

insert into cidades values 
(default, 'Pallet', 'Kanto', 'Sudoeste'),
(default, 'Cerulean', 'Kanto', 'Centro-Norte'),
(default, 'Pewter', 'Kanto', 'Sul');
-- ----------------------------------------------------------------------------------------------------------------------------------
