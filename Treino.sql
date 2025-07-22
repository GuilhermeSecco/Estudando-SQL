CREATE TABLE pessoas (
id int NOT NULL auto_increment,
nome varchar(30) NOT NULL,
nascimento date,
sexo enum('M', 'F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) DEFAULT 'Brasil',
primary key (id)
)DEFAULT CHARSET = utf8;

INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Maria', '1999-12-30', 'F', '55.2', '1.65', 'Portugal');

INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Creusa', '1920-7-12', 'F', '48.9', '1.55', 'Brasil');

INSERT INTO pessoas VALUES
(DEFAULT, 'Valter', '1955-1-5', 'M', '88.2', '1.80', 'Bolivia');

INSERT INTO pessoas VALUES
(DEFAULT, 'Bob', '1978-4-7', 'M', '104.2', '1.70', 'Estados Unidos'),
(DEFAULT, 'Ana', '2005-3-25', 'F', '57.2', '1.55', 'Canada'),
(DEFAULT, 'Richard', '1991-11-28', 'M', '78.5', '1.87', 'Inglaterra');

alter table pessoas
add column profissao varchar(10);

alter table pessoas
drop column profissao;

alter table pessoas
add column prof varchar(10) after nome;

alter table pessoas
modify column prof varchar(20);

alter table pessoas
change column prof profissao varchar(20);

select * from pessoas;

create table if not exists cursos(
nome varchar(30) not null unique,
descricao text,
horas int unsigned,
totaulas int unsigned,
ano year default '2016'
) default charset=utf8mb4;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key(idcurso);

alter table cursos
modify column idcurso int auto_increment;

insert into cursos values
(default,'HTML4', 'Curso de HTML5', '40', '37', '2014'),
(default,'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
(default,'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
(default,'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
(default,'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
(default,'MySQL', 'Bancos de Dados MySQL', '30', '15', '2016'),
(default,'Word', 'Curso completo de Word', '40', '30', '2018'),
(default,'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
(default,'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
(default,'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

update cursos
set nome = 'HTML5'
where idcurso = '1';

update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

update cursos
set nome = 'Java', horas = '40', ano = '2015'
where idcurso = '5'
limit 1;

delete from cursos
where idcurso = '8';

delete from cursos
where idcurso = '9';

delete from cursos
where idcurso = '10';

truncate cursos;

select * from pessoas
order by nome;

select * from pessoas
where sexo = 'M'
order by nascimento;

select * from pessoas
order by nascimento;

select nome, horas, ano from cursos
order by horas desc, nome;

select * from cursos
where idcurso <= 5
order by nome;

select nome, ano from cursos
where ano between 2012 and 2016
Order by ano, nome;

select nome, descricao, ano from cursos
where ano in (2014,2016)
order by ano, nome desc;

select nome, horas, totaulas from cursos
where horas > 30 or totaulas < 20;

select nome, peso, altura from pessoas
where peso <= 80 and altura >= 1.70
order by nome;

select nome from cursos
where nome like "P%";

select nome from cursos
where nome like "%A";

select nome from cursos
where nome like '%O%';

select nome from cursos
where nome not like '%A%';

select nome from cursos
where nome like '%L_';

select distinct horas from cursos;

select distinct nacionalidade from pessoas;

select count(*) from cursos where horas >30 ;

select max(totaulas) from cursos;

select min(altura) from pessoas;

select sum(totaulas) from cursos;

select sum(horas) from cursos;

select avg(horas) from cursos;

select nome from pessoas
where sexo = "F";

select nome, nascimento from pessoas
where nascimento between '1950-1-1' and '1980-12-31';

select nome, profissao from pessoas
where profissao = 'Programador' and sexo = 'M';

select * from pessoas
where nome like 'I%' and nacionalidade = 'Brasil'
limit 10;

select nome, nacionalidade from pessoas
where nome like '%Silva' and sexo = 'M' and nacionalidade not like 'Brasil' and peso < 100;

select max(altura) from pessoas
where nacionalidade = 'Brasil' and sexo = 'M';

select avg(altura) from pessoas
where sexo = 'M';

select * from pessoas;

select min(peso) from pessoas
where sexo = 'F' and nacionalidade not like 'Brasil' and nascimento between '1990-01-01' and '2010-12-31';

select count(*) from pessoas
where sexo = 'F' and altura > 1.70;