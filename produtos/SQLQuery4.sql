CREATE DATABASE SENAI;
USE SENAI;

CREATE TABLE alunos (
id INT PRIMARY KEY,
nome VARCHAR(100),
email VARCHAR(100),
id_curso INT,
);

INSERT INTO alunos(id,nome,email,id_curso)
 VALUES('1','FERNANDA MATOS NASCIMENTO','FERNANDA.M.COM.BR','17');

 SELECT*FROM alunos;

CREATE TABLE professores (
id INT PRIMARY KEY,
nome VARCHAR(100),
email VARCHAR(100),
especialidade VARCHAR(100),
);

 SELECT*FROM professores;

INSERT INTO professores(id,nome,email,especialidade)
VALUES('2','ANA SILVA','ANA.S.COM.BR','CIENCIAS');

CREATE TABLE cursos (
id INT PRIMARY KEY,
nome VARCHAR(100),
carga_horaria INT,
);
SELECT*FROM cursos;

INSERT INTO cursos(id,nome,carga_horaria)
VALUES('3','portugues','2600');

CREATE TABLE aluno_curso (
aluno_id INT,
curso_id INT,
FOREIGN KEY (aluno_id) REFERENCES alunos(id),
FOREIGN KEY (curso_id) REFERENCES cursos(id)
);
    
   
CREATE TABLE curso_professor (
curso_id INT,
professor_id INT,
FOREIGN KEY (curso_id) REFERENCES cursos(id),
FOREIGN KEY (professor_id) REFERENCES professores(id)
);