drop database escola;
create database escola;
use escola;

create table curso(
cod_curso int not null auto_increment primary key,
nome_curso varchar(50) not null,
mensalidade numeric(10,2)
);

create table aluno(
ra char(5) not null primary key,
rg char(9) not null,
nome_aluno varchar(50) not null
);

create table disciplina(
cod_disciplina varchar(4) not null primary key,
nome_disciplina varchar(50) not null,
numero_creditos varchar(1) not null,
cod_curso int,
foreign key (cod_curso) references curso(cod_curso)
);

create table boletim(
ra char(5) not null,
cod_disciplina varchar(4),
nota decimal(4,2),
primary key (ra),
foreign key (ra) references aluno(ra),
foreign key (cod_disciplina) references disciplina(cod_disciplina) 
);

insert into curso
(nome_curso, mensalidade)
values
("Análise de sistemas","100"),
("Ciencia da computação","950"),
("Sistemas de informação","800");

insert into aluno
(ra, rg, nome_aluno)
values
("45256","789562314","Bianca Maria Pedrosa"),
("44554","753198462","Tatiane Citton"),
("74587","147852369","Alexandre Pedrosa"),
("14785","321654987","Alexandre Monteiro"),
("14526","112456987","Marcia Ribeiro"),
("74586","778529636","Jussara Marandola"),
("44556","554123698","Walter Rodrigues");

insert into disciplina
(cod_disciplina, nome_disciplina, numero_creditos)
values
("BD","Banco de dados","4"),
("BDA","Banco de dados avançados","6"),
("BDOO","Banco de dados OOB","4"),
("BDS","sistemas de banco de dados","4"),
("DBD","Desenvolvimento banco de dados","6"),
("IBD","Introdução a banco de dados","2");

insert into boletim
(ra, nota)
values
("44556","10.00"),
("45256","7.50"),
("14785","9.00"),
("14526","9.60"),
("74586","8.00"),
("44554","6.00");

select count(*) as total_disciplinas from disciplina;
select count(*) as total_alunos from aluno;
select nome_curso from curso;






