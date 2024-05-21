Create database igrejadigital;
use igrejadigital;

create table doador (
idfuncao int primary key,
nome varchar(45),
telefone char(11),
email varchar(256),
cep char(9));

create table tipo (
idtipo int primary key,
nome varchar(45),
descrição varchar(45));

create table doacao (
iddoacao int auto_increment,
datadoacao date,
valor decimal(8,2),
