CREATE DATABASE avoltadoplanetaalien;
USE avoltadoplanetaalien;

SHOW TABLES;
SELECT * FROM bloom;

CREATE TABLE verbo (
    id INT PRIMARY KEY auto_increment,
    nomeverbo VARCHAR(40),
    fk_bloom_id INT
);

CREATE TABLE bloom (
    id INT PRIMARY KEY auto_increment,
    nome VARCHAR(40)
);


CREATE TABLE historia (
    id INT PRIMARY KEY auto_increment,
    titulo VARCHAR(150),
    descricao LONGTEXT,
    final VARCHAR(370)
);

CREATE TABLE competencia (
    id INT PRIMARY KEY auto_increment,
    descricao LONGTEXT,
    fk_verbo_id INT
);

CREATE TABLE etapa (
    id INT PRIMARY KEY auto_increment,
    instrucao LONGTEXT,
    ponto INT,
    tipo NCHAR(1),
    fk_verbo_id INT
);

CREATE TABLE Missao (
    id INT PRIMARY KEY auto_increment,
    hash nchar(22),
    titulo VARCHAR(80),
    forca INT,
    fk_competencia_id INT,
    fk_etapa_id INT
);

CREATE TABLE MissaoHistoria (
    id INT PRIMARY KEY auto_increment,
    fk_Missao_id INT,
    fk_historia_id INT
);
 
ALTER TABLE competencia ADD CONSTRAINT FK_competencia_2
    FOREIGN KEY (fk_verbo_id)
    REFERENCES verbo (id)
    ON DELETE CASCADE;
 
ALTER TABLE verbo ADD CONSTRAINT FK_verbo_2
    FOREIGN KEY (fk_bloom_id)
    REFERENCES bloom (id)
    ON DELETE CASCADE;
 
ALTER TABLE etapa ADD CONSTRAINT FK_etapa_2
    FOREIGN KEY (fk_verbo_id)
    REFERENCES verbo (id)
    ON DELETE CASCADE;
 
ALTER TABLE Missao ADD CONSTRAINT FK_Missao_2
    FOREIGN KEY (fk_competencia_id)
    REFERENCES competencia (id)
    ON DELETE CASCADE;
 
ALTER TABLE Missao ADD CONSTRAINT FK_Missao_3
    FOREIGN KEY (fk_etapa_id)
    REFERENCES etapa (id)
    ON DELETE CASCADE;
 
ALTER TABLE MissaoHistoria ADD CONSTRAINT FK_MissaoHistoria_2
    FOREIGN KEY (fk_Missao_id)
    REFERENCES Missao (id)
    ON DELETE CASCADE;
 
ALTER TABLE MissaoHistoria ADD CONSTRAINT FK_MissaoHistoria_3
    FOREIGN KEY (fk_historia_id)
    REFERENCES historia (id)
    ON DELETE CASCADE;


SELECT * FROM bloom;
insert into bloom (nome)
	VALUES("memorizar"),
    ("compreender"),
    ("aplicar"),
    ("analizar"),
    ("avaliar"),
    ("criar");
    
insert into verbo (nomeverbo) 
   values("listar"),("relembrar"),("reconhecer"),("indentificar"),
   ("localizar"),("descrever"),("criar"),("esquematizar"),("relacionar"),("explicar"),
   ("demostrar"),("parafrasear"),("associar"),("converter"),("utilizar"),("implementar"),("modificar"),
   ("experimentar"),("calcular"),("demonstrar"),("classificar"),("resolver"),("categorizar"),("diferenciar"),
   ("comparar"),("explicar"),("integrar"),("investigar"),("defender"),("delimitar"),("estimar"),("selecionar"),("justificar"),
   ("comparar"),("explicar"),("elaborar"),("desenhar"),("produzir"),("prototipar"),("traçar"),("idear"),("inventar");
   
select * from historia;
insert into historia(titulo,descricao,final)values
("Planeta Alien","No ano de 3250 a terra foi destruída por alienígenas do Planeta Alien. Esses extraterrestes
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
terrestres","Ao final de todas as missões, todos os “Aliens” serão destruídos e o Furão irá resgatar seus
amigos e construir um novo planeta com justiça e paz");

select * from competencia;

insert into competencia(descricao) values("o jogador tem que os Elaborar scripts ddl , dml e dql para popular o banco de dados");

insert into competencia(descricao)values("tem que Indentificar  tarefas para o jogo a cada dia  ");
insert into competencia(descricao)values ("o jogador tem que Associar os personagens do jogo ");
insert into competencia (descricao)values(" o jogador tem que calcular a localizacao  zona de fases do jogo");
insert into competencia (descricao)values("o jogador resolver as fases   do jogo ");
insert into competencia (descricao)values(" o jogador  tem que selecionar e idealizar quais fases do jogo que esta ");



select * from missao;
insert into missao (titulo,forca)values("Encontrar tags",1);
insert into missao (titulo,forca)values("Sectores",2);
insert into missao (titulo,forca)values("Scripts",3);
insert into missao (titulo,forca)values("Exceptions",4);
insert into missao (titulo,forca)values("Conditions",5);
insert into missao (titulo,forca)values("Loops",6);
insert into missao (titulo,forca)values("Arrays",7);
insert into missao (titulo,forca)values("Functions",8);
insert into missao (titulo,forca)values("Objects",9);
insert into missao (titulo,forca)values("Databases",10);

select * from etapa;

insert into etapa (instrucao,ponto,tipo) values ("O furao devera encontra tags html",1,"a");
insert into etapa (instrucao,ponto,tipo) values("o jogador devera encontar selectores",2,"h");
insert into etapa (instrucao,ponto,tipo)values ("tem que encontar os scripts",3,"h");
insert into etapa (instrucao,ponto,tipo)values ("o jogador tem que execultar os exceptions",4,"h");
insert into etapa (instrucao,ponto,tipo)values ("o jogador tem que achar condicoes do jogo",5,"c");
insert into etapa (instrucao,ponto,tipo)values("o jogador tem que fazer loops do jogo",6,"h");
insert into etapa (instrucao,ponto,tipo)values("o jogador tem ten que char estruturas arrays para guardar dados do jogo",7,"c");
insert into etapa (instrucao,ponto,tipo)values("o jogador tem que encontrar as funcoes certas para cada etapa ",8,"h");
insert into etapa (instrucao,ponto,tipo)values("o jogador tem que encontar objetos especificos no jogo",9,"c");
insert into etapa(instrucao,ponto,tipo)values ("o jogador tem que encontrar databases para acumular forca",10,"h");



