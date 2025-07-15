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

describe cursos;