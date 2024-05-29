Create database DigitalChurch;
use DigitalChurch;


CREATE TABLE tipo (
    idtipo int primary key auto_increment,
	tipo varchar(45),
	descrição VARCHAR(50)
);

insert into tipo values 
(default, 'Conselhos', null),
(default, 'Versículos', null),
(default, 'Frases', null);


CREATE TABLE usuario (
idusuario int primary key auto_increment,
fktipo int, 
nome varchar(45),
email varchar(256),
telefone char(11),
cep char(9),
numero int,
complemento varchar(45),
senha varchar(45),
FOREIGN KEY (fktipo) REFERENCES tipo(idtipo))
auto_increment = 100;

select * from usuario;

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(idusuario)
);

select * from aviso;

select sum(case
when fktipo = 1 then 1
else 0
end) as qtdconselho ,
sum(case
when fktipo = 2 then 1
else 0
end) as qtdversiculo , 
sum(case
when fktipo = 3 then 1
else 0
end) as qtdfrases 
from usuario;

select 'Conselho' as tipo, count(*) as qtd from usuario where fktipo= 1
union all
select 'Versiculo' as tipo, count(*) as qtd from usuario where fktipo= 2
union all
select 'Frases' as tipo, count(*) as qtd from usuario where fktipo= 3;





insert into usuario(fktipo,nome,email,telefone,cep,numero,complemento,senha) values 
( 2, 'nome', 'email','11111111111','05574090','12345','complemento','senha');
