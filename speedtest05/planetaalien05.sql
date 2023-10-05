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
  /* Lógico_1: */

CREATE TABLE historiadojogo (
    id INT PRIMARY KEY auto_increment,
    titulo VARCHAR(120),
	descricao LONGTEXT,
    final VARCHAR(120)  
); 
drop table historiadojogo;

  insert into historiadojogo(titulo,final,descricao) values ('Planeta Alien','Ao final de todas as missões, todos os “Aliens” serão destruídos e o Furão irá resgatar seus
amigos e construir um novo planeta com justiça e paz.','No ano de 3250 a terra foi destruída por alienígenas do Planeta Alien. Esses extraterrestes
eram desenvolvedores de tecnologia avançada em seu planeta, mas aprenderam com os
humanos a linguagem de marcação HTML, a linguagem de estilização CSS e a linguagem de
programação Java Script.
Antes de destruir a terra por inteiro, escolheu um casal de cada Mamífero e fez uma mutação
genética com a tecnologia do planeta Alien e as tecnologias aprendidas no planeta Terra:
HTML, CSS e Java Script.
Todos os Mamíferos mutantes, aceitaram tranquilamente a mutação genética, mas um e
apenas um, chamado de Furão Mutante Guerreiro, não aceitou. Ele foi levado para o Planeta
Alien, mas a sua memória ainda continuou na terra. Um dia essas memórias se misturaram
com sua mutação genética e ele se revoltou contra os aliens.
A revolta fez nascer missões. E cada missão ganha um nível de força que o torna mais poderoso
aumentando a possibilidade de destruir mais aliens e assim salvar também os seus amigos
terrestres.');

select * from historiadojogo;


CREATE table 
  