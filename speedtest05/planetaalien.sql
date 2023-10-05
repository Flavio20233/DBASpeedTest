create database planetalien;

use planetaalien;

create table  usuario(

id int primary key auto_increment,
nome varchar(70)null,
apelido varchar(70)not null,
email varchar(80)not null,
senha nchar (8) not null
);


insert into usuario (nome,apelido,email,senha)values('tatiene','tati','tatiane@gamil.com','12345678');



update usuario set apelido = 'taty_games' where id =1;
 
insert into usuario (nome,apelido,email,senha)values('flavio','flay','flavio@gamil.com','12345678');
insert into usuario (nome,apelido,email,senha)values('Artur','Art','Artur@gamil.com','12345678');
insert into usuario (nome,apelido,email,senha)values('tatiene','tati','tatiane@gamil.com','12345678');
insert into usuario (nome,apelido,email,senha)values('vinicius','vini','vinicius@gamil.com','12345678');
insert into usuario (nome,apelido,email,senha)values('paulo','Pal','paulo@gamil.com','12345678');
insert into usuario (nome,apelido,email,senha)values('luiz','luz','luiz@gamil.com','12345678');
insert into usuario (nome,apelido,email,senha)values('Romulo','romi','romulo@gamil.com','12345678');
insert into usuario (nome,apelido,email,senha)values('pedro','pedro','pedro@gamil.com','12345678');
insert into usuario (nome,apelido,email,senha)values('jose','jose','jose@gamil.com','12345678');
insert into usuario (nome,apelido,email,senha)values('vitoria','vivi','vitorias@gamil.com','12345678')

insert into usuario (nome,apelido,email,senha)values('romulo cesar','jogador_da_cei','jogao@gmail.com','34567898');


select id,apelido from usuario;
delete from usuario where id=22;

select * from usuario;
delete from usuario where id>=7 and id<=20;

show tables;
describe usuario;


create table bloom (id int primary key auto_increment,
	nome varchar(70) not null);

insert into bloom(nome)values
('memorizar'),
('compreender'),
('aplicar'),
('analizar'),
('avaliar'),
('criar');
  select * from bloom;
  
  delete from bloom where id >6 ;
  