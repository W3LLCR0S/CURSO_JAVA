-- Criando o banco de dados "revisao" com configurações padrão UTF-8
CREATE DATABASE revisao
	DEFAULT CHARACTER SET utf8
	DEFAULT COLLATE utf8_general_ci;

-- Selecionando o banco de dados "revisao" como o banco de dados atual
USE revisao;

-- Removendo o modo "ONLY_FULL_GROUP_BY" do SQL_MODE global
SET GLOBAL sql_mode = (SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));

-- Criando a tabela "alunos" com as respectivas colunas e configurações
CREATE TABLE IF NOT EXISTS alunos (
	id INT AUTO_INCREMENT PRIMARY KEY,          -- Coluna ID com chave primária autoincremental
	nome VARCHAR(100) NOT NULL,                 -- Coluna Nome, obrigatória (não nula)
	profissao VARCHAR(30),                      -- Coluna Profissão, pode ser nula
	nascimento DATE,                            -- Coluna Nascimento no formato data
	genero ENUM('M', 'F'),                      -- Coluna Gênero, aceitando apenas 'M' ou 'F'
	peso DECIMAL(5, 2),                         -- Coluna Peso com até 5 dígitos e 2 casas decimais
	altura DECIMAL(3, 2),                       -- Coluna Altura com até 3 dígitos e 2 casas decimais
	localidade VARCHAR(30) DEFAULT 'Londrina'   -- Coluna Localidade, com valor padrão 'Londrina'
) DEFAULT CHARSET = utf8;

-- Inserindo dados na tabela "alunos"
INSERT INTO alunos VALUES
    -- Linhas de dados para alunos
    (1,'Daniel Morais','Auxiliar Administrat','1984-01-02','M',78.50,1.83,'Londrina'),
    (2,'Talita Nascimento','Farmacêutico','1999-12-30','F',55.20,1.65,'Ibiporã'),
    (3,'Emerson Gabriel','Programador','1920-12-30','M',50.20,1.65,'Rolândia'),
    (4,'Lucas Damasceno','Auxiliar Administrat','1930-11-02','M',63.20,1.75,'Jataizinho'),
    (5,'Leila Martins','Farmacêutico','1975-04-22','F',99.00,2.15,'Londrina'),
    (6,'Letícia Neves','Programador','1999-12-03','F',87.00,2.00,'Londrina'),
    (7,'Janaína Couto','Auxiliar Administrat','1987-11-12','F',75.40,1.66,'Maringá'),
    (8,'Carlisson Rosa','Professor','2010-08-01','M',78.22,1.98,'Londrina'),
    (9,'Jackson Telles','Programador','1999-01-23','M',55.75,1.33,'Ibiporã'),
    (10,'Danilo Araujo','Dentista','1975-12-10','M',99.21,1.87,'Maringá'),
    (11,'Andreia Delfino','Auxiliar Administrat','1975-07-01','F',48.64,1.54,'Jataizinho'),
    (12,'Valter Vilmerson','Ator','1985-10-12','M',88.55,2.03,'Londrina'),
    (13,'Allan Silva','Programador','1993-11-11','M',76.99,1.55,'Londrina'),
    (14,'Rosana Kunz','Professor','1935-01-16','F',55.24,1.87,'Londrina'),
    (15,'Josiane Dutra','Empreendedor','1950-01-20','F',98.70,1.04,'Ibiporã'),
    (16,'Elvis Schwarz','Dentista','2011-05-07','M',66.69,1.76,'Maringá'),
    (17,'Paulo Narley','Auxiliar Administrat','1997-03-17','M',120.10,2.22,'Londrina'),
    (18,'Joade Assis','Médico','1930-12-01','M',65.88,1.78,'Sertanópolis'),
    (19,'Nara Matos','Programador','1978-03-17','F',65.90,1.33,'Londrina'),
    (20,'Marcos Dissotti','Empreendedor','2010-01-01','M',53.79,1.54,'Ibiporã'),
    (21,'Ana Carolina Mendes','Ator','2000-12-15','F',88.30,1.54,'Londrina'),
    (22,'Guilherme de Sousa','Dentista','2001-05-18','M',132.70,1.97,'Rolândia'),
    (23,'Bruno Torres','Auxiliar Administrat','2000-01-30','M',44.65,1.65,'Londrina'),
    (24,'Yuji Homa','Empreendedor','1996-12-25','M',33.90,1.22,'Apucarana'),
    (25,'Raian Porto','Programador','1989-05-05','M',54.89,1.54,'Londrina'),
    (26,'Paulo Batista','Ator','1999-03-15','M',110.12,1.87,'Ibiporã'),
    (27,'Monique Precivalli','Auxiliar Administrat','2013-12-30','F',48.20,1.22,'Londrina'),
    (28,'Herisson Silva','Auxiliar Administrat','1965-10-10','M',74.65,1.56,'Maringá'),
    (29,'Tiago Ulisses','Dentista','1993-04-22','M',150.30,2.35,'Londrina'),
    (30,'Anderson Rafael','Programador','1989-12-01','M',64.22,1.44,'Jataizinho'),
    (31,'Karine Ribeiro','Empreendedor','1988-10-01','F',42.10,1.65,'Londrina'),
    (32,'Roberto Luiz Debarba','Ator','2007-01-09','M',77.44,1.56,'Londrina'),
    (33,'Jarismar Andrade','Dentista','2000-06-23','F',63.70,1.33,'Londrina'),
    (34,'Janaina Oliveira','Professor','1955-03-12','F',52.90,1.76,'Uraí'),
    (35,'Márcio Mello','Programador','2011-11-20','M',54.11,1.55,'Maringá'),
    (36,'Robson Rodolpho','Auxiliar Administrat','2000-08-08','M',110.10,1.76,'Londrina'),
    (37,'Daniele Moledo','Empreendedor','2006-08-11','F',101.30,1.99,'Londrina'),
    (38,'Neto Sophiate','Ator','1996-05-17','M',59.28,1.65,'Ibiporã'),
    (39,'Neriton Dias','Auxiliar Administrat','2009-10-30','M',48.99,1.29,'Londrina'),
    (40,'André Schmidt','Programador','1993-07-26','M',55.37,1.22,'Arapongas'),
    (41,'Isaias Buscarino','Dentista','2001-01-07','M',99.90,1.55,'Rolândia'),
    (42,'Rafael Guimma','Empreendedor','1968-04-11','M',88.88,1.54,'Londrina'),
    (43,'Ana Carolina Hernandes','Ator','1970-10-11','F',65.40,2.08,'Maringá'),
    (44,'Luiz Paulo','Professor','1984-11-01','M',75.12,1.38,'Ibiporã'),
    (45,'Bruna Teles','Programador','1980-11-07','F',55.10,1.86,'Londrina'),
    (46,'Diogo Padilha','Auxiliar Administrat','2000-03-03','M',54.34,1.88,'Arapongas'),
    (47,'Bruno Miltersteiner','Dentista','1986-02-19','M',77.45,1.65,'Sarandi'),
    (48,'Elaine Nunes','Programador','1998-08-15','F',35.90,2.00,'Uraí'),
    (49,'Silvio Ricardo','Programador','2012-03-12','M',65.99,1.23,'Maringá'),
    (50,'Denilson Barbosa da Silva','Empreendedor','2000-01-08','M',97.30,2.00,'Londrina'),
    (51,'Jucinei Teixeira','Professor','1977-11-22','F',44.80,1.76,'Ibiporã'),
    (52,'Bruna Santos','Auxiliar Administrat','1991-12-01','F',76.30,1.45,'Uraí'),
    (53,'André Vitebo','Médico','1970-07-01','M',44.11,1.55,'Londrina'),
    (54,'Andre Santini','Programador','1991-08-15','M',66.00,1.76,'Cambé'),
    (55,'Ruan Valente','Programador','1998-03-19','M',101.90,1.76,'Uraí'),
    (56,'Nailton Mauricio','Médico','1992-04-25','M',86.01,1.43,'Maringá'),
    (57,'Rita Pontes','Professor','1999-09-02','F',54.10,1.35,'Arapongas'),
    (58,'Carlos Camargo','Programador','2005-02-22','M',124.65,1.33,'Londrina'),
    (59,'Philppe Oliveira','Auxiliar Administrat','2000-05-23','M',105.10,2.19,'Londrina'),
    (60,'Dayana Dias','Professor','1993-05-30','F',88.30,1.66,'Arapongas'),
    (61,'Silvana Albuquerque','Programador','1999-05-22','F',56.00,1.50,'Londrina'),
    (62,'Nailton Mauricio','Médico','1992-04-25','M',86.01,1.43,'Maringá'),
    (63,'Rita Pontes','Professor','1999-09-02','F',54.10,1.35,'Arapongas'),
    (64,'Carlos Camargo','Programador','2005-02-22','M',124.65,1.33,'Londrina'),
    (65,'Philppe Oliveira','Auxiliar Administrat','2000-05-23','M',105.10,2.19,'Londrina'),
    (66,'Dayana Dias','Professor','1993-05-30','F',88.30,1.66,'Arapongas'),
    (67,'Silvana Albu','Professor','1999-05-22','F',56.00,1.50,'Londrina'),
    (68,'Nailton Mauricio','Dentista','1992-04-25','M',86.01,1.43,'Maringá'),
    (69,'Rita Pontes','Engenehiro','1999-09-02','F',54.10,1.35,'Arapongas'),
    (70,'Carlos Camargo','Programador','2005-02-22','M',124.65,1.33,'Londrina'),
    (71,'Philppe Oliveira','Bancário','2000-05-23','M',105.10,2.19,'Londrina'),
    (72,'Dayana Dias','Escrituário','1993-05-30','F',88.30,1.66,'Arapongas'),
    (73,'Silvana Castro','Programador','1999-05-22','F',56.00,1.50,'Londrina'),
    (74,'Mauricio Mendes','Médico','1992-04-25','M',86.01,1.43,'Maringá'),
    (75,'Rita Cadilac','Coordenadora','1999-09-02','F',54.10,1.35,'Arapongas'),
    (76,'Bia Camargo','Programador','2005-02-22','F',124.65,1.33,'Rolândia'),
    (77,'Phil Castro','Auxiliar Administrat','2000-05-23','M',105.10,2.19,'Jataizinho'),
    (78,'Elias Dias','Professor','1993-05-30','F',88.30,1.66,'Arapongas'),
    (79,'Silvia Major','Gerente','1999-05-22','F',56.00,1.50,'Londrina'),
    (80,'Robson Mauricio','Médico','1992-04-25','M',86.01,1.43,'Maringá'),
    (81,'Lucas Pontes','Professor','1999-09-02','F',54.10,1.35,'Arapongas'),
    (82,'Carlos Montijo','Médico','2005-02-22','M',124.65,1.33,'Londrina'),
    (83,'Milton Oliveira','Instrutor','2000-05-23','M',105.10,2.19,'Londrina'),
    (84,'Viviane Dias','Professor','1993-05-30','F',88.30,1.66,'Arapongas'),
    (85,'Natasha Albuquerque','Médico','1999-05-22','F',56.00,1.50,'Londrina');

-- Criando a tabela "cursos" com as respectivas colunas e configurações
CREATE TABLE cursos (
	id INT PRIMARY KEY,           -- Coluna ID com chave primária
	nome VARCHAR(100) NOT NULL,   -- Coluna Nome, obrigatória (não nula)
	descricao VARCHAR(255),       -- Coluna Descrição, pode ser nula
	carga_horaria INT,            -- Coluna Carga Horária como inteiro
	total_aulas INT,              -- Coluna Total de Aulas como inteiro
	ano INT                       -- Coluna Ano como inteiro
);

-- Inserindo dados na tabela "cursos"
INSERT INTO cursos VALUES
    -- Linhas de dados para cursos
    (1,'HTML5','Curso de HTML5',40,37,2021),
    (2,'Algoritmos','Lógica de Programação',20,15,2020),
    (3,'Photoshop','Dicas de Photoshop CC',10,8,2022),
    (4,'PHP','Curso de PHP para iniciantes',40,20,2023),
    (5,'Java','Introdução à Linguagem Java',40,29,2020),
    (6,'MySQL','Bancos de Dados MySQL',30,15,2020),
    (7,'Word','Curso completo de Word',40,30,2022),
    (8,'Python','Curso de Python',40,18,2020),
    (9,'POO','Curso de Programação Orientada a Objetos',60,35,2020),
    (10,'Lógica','Lógica de Programação',60,20,2021),
    (11,'Responsividade','Curso de Responsividade',30,15,2019),
    (12,'C++','Curso de C++ com Orientação a Objetos',40,25,2020),
    (13,'C#','Curso de C#',30,12,2020),
    (14,'Android','Curso de Desenvolvimento de Aplicativos para Android',60,30,2021),
    (15,'JavaScript','Curso de JavaScript',35,18,2020),
    (16,'PowerPoint','Curso completo de PowerPoint',30,12,2020),
    (17,'Swift','Curso de Desenvolvimento de Aplicativos para iOS',60,30,2021),
    (18,'Hardware','Curso de Montagem e Manutenção de PCs',30,12,2022),
    (19,'Redes','Curso de Redes para Iniciantes',40,15,2019),
    (20,'Segurança','Curso de Segurança',15,8,2020),
    (21,'SEO','Curso de Otimização de Sites',30,12,2021),
    (22,'Premiere','Curso de Edição de Vídeos com Premiere',20,10,2023),
    (23,'After Effects','Curso de Efeitos em Vídeos com After Effects',20,10,2021),
    (24,'WordPress','Curso de Criação de Sites com WordPress',60,30,2020),
    (25,'Joomla','Curso de Criação de Sites com Joomla',60,30,2019),
    (26,'Magento','Curso de Criação de Lojas Virtuais com Magento',50,25,2023),
    (27,'Modelagem de Dados','Curso de Modelagem de Dados',30,12,2020),
    (28,'HTML4','Curso Básico de HTML, versão 4.0',20,9,2023),
    (29,'PHP7','Curso de PHP, versão 7.0',40,20,2020),
    (30,'PHP4','Curso de PHP, versão 4.0',20,10,2022),
    (31,'Internet2','Curso para navegação',25,12,2021),
    (32,'Intranet2','Curso de ambientação de redes internas',30,15,2020),
    (33,'LibreOffice','Curso do pacote Libre Office',50,20,2023),
    (34,'Arduino2','Curso introdução ao arduino',40,20,2024),
    (35,'Corel9','Curso de Corel Draw',50,25,2024),
    (36,'Web Designer','Curso internet WEB',50,25,2023),
    (37,'Lógica','Curso de lógica de programação',30,15,2021),
    (38,'Android1','Curso de programação Android',50,20,2020),
    (39,'Auto Cad','Curso introdução ao CAD',30,15,2023),
    (40,'SQL','Curso de Banco de dados MySQL',50,20,2022);

-- Consultas SQL executando diversas operações no banco de dados:
-- 24.07.2023 - Revisão de comandos de Banco de dados:

-- Seleciona todos os registros da tabela "alunos"
SELECT * FROM alunos;

-- Seleciona todos os registros da tabela "alunos" onde o gênero é "F" (feminino)
SELECT * FROM alunos WHERE genero = 'F';

-- Seleciona todos os registros da tabela "alunos" onde a localidade não seja "Londrina"
SELECT * FROM alunos WHERE localidade <> 'Londrina';

-- Seleciona todos os registros da tabela "alunos" onde o gênero é "M" (masculino) e a localidade é "Ibiporã"
SELECT * FROM alunos WHERE genero = 'M' AND localidade = 'Ibiporã';

-- Seleciona todos os registros da tabela "alunos" onde a data de nascimento é anterior a '2005-07-24'
SELECT * FROM alunos WHERE nascimento < '2005-07-24';

-- Seleciona todos os registros da tabela "alunos" onde a data de nascimento é anterior a '2005-07-24',
-- o gênero é "M" (masculino), a localidade é "Londrina"
SELECT * FROM alunos WHERE nascimento < '2005-07-24' AND genero = 'M' AND localidade = 'Londrina';

-- Seleciona todos os registros da tabela "alunos" onde a data de nascimento é anterior a '2005-07-24',
-- o gênero é "M" (masculino), a localidade é "Londrina" e a altura é maior ou igual a 1.80
SELECT * FROM alunos WHERE nascimento < '2005-07-24' AND genero = 'M' AND localidade = 'Londrina' AND altura >= 1.80;

-- Seleciona todos os registros da tabela "alunos" onde a data de nascimento é anterior a '2005-07-24',
-- o gênero é "M" (masculino), a localidade é "Londrina", a altura é maior ou igual a 1.80 e a profissão é "Auxiliar Administrat"
SELECT * FROM alunos WHERE nascimento < '2005-07-24' AND genero = 'M' AND localidade = 'Londrina' AND altura >= 1.80 AND profissao = 'Auxiliar Administrat';

-- Exemplo select dentro de select:

-- Seleciona todos os registros da tabela "alunos" onde a altura é igual à altura de outros alunos cujo peso é maior que 150
SELECT * FROM alunos WHERE altura = (SELECT altura FROM alunos WHERE peso > 150);

-- Seleciona a altura de todos os alunos cujo peso é maior que 150
SELECT altura FROM alunos WHERE peso > 150;

-- ATIVIDADES

-- 25.07.2024 - Atividade 2:

/* 1 */ -- Seleciona a profissão e conta quantos alunos têm cada profissão agrupando os resultados
SELECT profissao, COUNT(*) AS quantitativo FROM alunos GROUP BY profissao;

/* 2 */ -- Seleciona o gênero e conta quantos alunos de cada gênero nasceram após 01/01/2001, agrupando os resultados
SELECT genero, COUNT(*) AS quantitativo FROM alunos WHERE nascimento > '2001-01-01' GROUP BY genero;

/* 3 */ -- Seleciona a localidade e conta quantos alunos há em cada localidade que não seja "Londrina" e possui pelo menos 3 alunos, agrupando os resultados
SELECT localidade, COUNT(*) AS total_pessoas_nascidas_em_londrina FROM alunos WHERE localidade <> 'Londrina' GROUP BY localidade HAVING COUNT(*) >= 3;

/* 4 */ -- Seleciona alturas que possuem mais de uma ocorrência na tabela de alunos e calcula a média dessas alturas, filtrando apenas as que estão acima da média global de altura dos alunos.
SELECT altura, COUNT(*) AS total_pessoas, AVG(altura) AS media_altura FROM alunos GROUP BY altura HAVING COUNT(*) > 1 AND altura > (SELECT AVG(altura) FROM alunos);

-- EXTRAS:

/* 1 */ -- Seleciona o nome dos alunos da localidade "Londrina" e os ordena em ordem alfabética
SELECT nome FROM alunos WHERE localidade = 'Londrina' ORDER BY nome;

/* 2 */ -- Seleciona a quantidade de mulheres em cada localidade que não seja "Londrina", agrupando os resultados e ordenando em ordem decrescente pelo número de mulheres
SELECT COUNT(*) AS quantidade_mulheres FROM alunos WHERE genero = 'F' AND localidade <> 'Londrina' GROUP BY genero ORDER BY quantidade_mulheres DESC;

/* 3 */ -- Seleciona o nome dos alunos que pesam mais de 85 kg e não são de "Londrina"
SELECT nome FROM alunos WHERE peso > 85 AND localidade <> 'Londrina';

/* 4 */ -- Seleciona o gênero e conta quantos alunos há em cada gênero cuja altura seja menor que 1.70, agrupando os resultados
SELECT genero, COUNT(*) AS quantidade_alunos FROM alunos WHERE altura < 1.70 GROUP BY genero;

/* 5 */ -- Seleciona a localidade e o nome dos alunos e os ordena primeiro por localidade e, em seguida, por nome
SELECT localidade, nome FROM alunos ORDER BY localidade, nome;

/* 6 */ -- Seleciona o gênero e conta quantos alunos há em cada gênero da localidade "Londrina", agrupando os resultados
SELECT genero, COUNT(*) AS quantidade_alunos FROM alunos WHERE localidade = 'Londrina' GROUP BY genero;

/* 7 */ -- Seleciona a localidade, o gênero e conta quantos alunos há em cada combinação de localidade e gênero, agrupando os resultados
SELECT localidade, genero, COUNT(*) AS quantidade_alunos FROM alunos GROUP BY localidade, genero;

-- 25.07.2024 - Atividades:

/* 1 */ -- Seleciona o gênero e a média de peso dos alunos de cada gênero, agrupando os resultados
SELECT genero, AVG(peso) AS media_peso FROM alunos GROUP BY genero;

/* 2 */ -- Seleciona a profissão e conta quantos alunos têm cada profissão agrupando os resultados
SELECT profissao, COUNT(*) AS quantidade_alunos FROM alunos GROUP BY profissao;

/* 3 */ -- Seleciona a localidade e conta quantos alunos há em cada localidade, agrupando os resultados
SELECT localidade, COUNT(*) AS quantidade_alunos FROM alunos GROUP BY localidade;

/* 4 */ -- Seleciona o gênero e a altura máxima e mínima dos alunos de cada gênero, agrupando os resultados
SELECT genero, MAX(altura) AS altura_maxima, MIN(altura) AS altura_minima FROM alunos GROUP BY genero;

/* 5 */ -- Seleciona a profissão e a soma dos pesos de todos os alunos em cada profissão, agrupando os resultados
SELECT profissao, SUM(peso) AS soma_peso FROM alunos GROUP BY profissao;

/* 6 */ -- Seleciona a média da carga horária de todos os cursos
SELECT AVG(carga_horaria) AS media_carga_horaria FROM cursos;

/* 7 */ -- Seleciona o ano e conta quantos cursos há em cada ano, agrupando os resultados
SELECT ano, COUNT(*) AS quantidade_cursos FROM cursos GROUP BY ano;

/* 8 */ -- Seleciona o ano e a média da carga horária de todos os cursos em cada ano, agrupando os resultados
SELECT ano, AVG(carga_horaria) AS media_carga_horaria FROM cursos GROUP BY ano;

/* 9 */ -- Seleciona o nome do curso e a soma total de aulas para cada curso que tenha mais de 20 aulas, agrupando os resultados
SELECT nome_curso, SUM(total_aulas) AS total_aulas FROM cursos GROUP BY nome_curso HAVING total_aulas > 20;

/* 10 */ -- Seleciona o ano e conta quantos cursos há em cada ano, ordena em ordem decrescente e retorna apenas o primeiro resultado
SELECT ano, COUNT(*) AS quantidade_cursos FROM cursos GROUP BY ano ORDER BY quantidade_cursos DESC LIMIT 1;

/* 11 */ -- Seleciona a quantidade de cursos que têm carga horária maior que a média de carga horária de todos os cursos
SELECT COUNT(*) AS quantidade_cursos FROM cursos WHERE carga_horaria > (SELECT AVG(carga_horaria) FROM cursos);

-- 02.06.2023 - Atividade 1:

/* 1 */ -- Seleciona o nome e a profissão dos alunos do gênero "M" (masculino)
SELECT nome, profissao FROM alunos WHERE genero = 'M';

/* 2 */ -- Seleciona o nome e a data de nascimento dos alunos da localidade "Londrina" e nascidos antes de 01/01/2000
SELECT nome, nascimento FROM alunos WHERE localidade = 'Londrina' AND nascimento < '2000-01-01';

/* 3 */ -- Seleciona o nome e o peso dos alunos do gênero "F" (feminino) com peso superior a 60 kg
SELECT nome, peso FROM alunos WHERE genero = 'F' AND peso > 60;

/* 4 */ -- Seleciona o ID e o nome dos alunos que têm a profissão de "Programador"
SELECT id, nome FROM alunos WHERE profissao = 'Programador';

/* 5 */ -- Seleciona o nome e a localidade dos alunos do gênero "F" (feminino)
SELECT nome, localidade FROM alunos WHERE genero = 'F';

/* 6 */ -- Seleciona o nome dos cursos cujo ano não seja 2020 e a carga horária seja superior a 30
SELECT nome FROM cursos WHERE ano <> 2020 AND carga_horaria > 30;

/* 7 */ -- Seleciona todos os cursos cujo total de aulas é maior que 15
SELECT * FROM cursos WHERE total_aulas > 15;

/* 8 */ -- Seleciona o nome, descrição e ano dos cursos cujo ano é 2023
SELECT nome, descricao, ano FROM cursos WHERE ano = 2023;

/* 9 */ -- Seleciona todos os alunos com altura maior que 1.80 e peso maior que 80
SELECT * FROM alunos WHERE altura > 1.80 AND peso > 80;

/* 10 */ -- Seleciona todos os alunos cuja localidade não seja "Londrina"
SELECT * FROM alunos WHERE localidade <> 'Londrina';

-- 02.06.2023 - Atividade 2:

/* 1 */ -- Seleciona o nome dos alunos do gênero "F" (feminino)
SELECT nome FROM alunos WHERE genero = 'F';

/* 2 */ -- Seleciona todos os alunos nascidos entre 01/01/2000 e 31/12/2005
SELECT * FROM alunos WHERE nascimento BETWEEN '2000-01-01' AND '2005-12-31';

/* 3 */ -- Seleciona o ID e o nome dos alunos que têm a profissão de "Programador"
SELECT id, nome FROM alunos WHERE profissao = 'Programador';

/* 4 */ -- Seleciona todos os alunos do gênero "F" (feminino), da localidade "Londrina" e cujo nome comece com a letra "M"
SELECT * FROM alunos WHERE genero = 'F' AND localidade = 'Londrina' AND nome LIKE 'M%';

/* 5 */ -- Seleciona o nome e a localidade dos alunos cujo nome contenha "Silva", mas não sejam de "Londrina" e tenham peso inferior a 100 kg
SELECT nome, localidade FROM alunos WHERE nome LIKE '%Silva%' AND localidade <> 'Londrina' AND peso < 100;

/* 6 */ -- Seleciona o nome dos alunos do gênero "F" (feminino) e nascidos antes de 01/01/2000
SELECT nome FROM alunos WHERE genero = 'F' AND nascimento < '2000-01-01';

/* 7 */ -- Seleciona o nome dos alunos com a profissão de "Programador" e que sejam da localidade "Londrina"
SELECT nome FROM alunos WHERE profissao = 'Programador' AND localidade = 'Londrina';

/* 8 */ -- Seleciona o nome dos alunos cuja localidade não seja "Londrina"
SELECT nome FROM alunos WHERE localidade <> 'Londrina';

/* 9 */ -- Seleciona o nome dos alunos que contenham a letra "e" em seu nome
SELECT nome FROM alunos WHERE nome LIKE '%e%';

/* 10 */ -- Seleciona o nome e a altura dos alunos com altura maior que 1.70
SELECT nome, altura FROM alunos WHERE altura > 1.70;

-- 24.07.2023 - Atividades:

/* 1 */ -- Seleciona todos os alunos cujo nome comece com a letra "B"
SELECT * FROM alunos WHERE nome LIKE 'B%';

/* 2 */ -- Seleciona todos os alunos nascidos entre 01/01/1998 e 31/12/2005
SELECT * FROM alunos WHERE nascimento BETWEEN '1998-01-01' AND '2005-12-31';

/* 3 */ -- Seleciona todos os alunos nascidos entre 01/01/1998 e 31/12/2005 e ordena os resultados pelo nome
SELECT * FROM alunos WHERE nascimento BETWEEN '1998-01-01' AND '2005-12-31' ORDER BY nome;

/* 4 */ -- Seleciona todos os alunos cujo peso está entre 60 e 85 e ordena os resultados em ordem decrescente pelo nome
SELECT * FROM alunos WHERE peso BETWEEN 60 AND 85 ORDER BY nome DESC;

/* 5 */ -- Seleciona o nome e a localidade dos alunos nascidos antes de 01/01/2000
SELECT nome, localidade FROM alunos WHERE nascimento < '2000-01-01';

/* 6 */ -- Seleciona o nome e a data de nascimento dos alunos cujo nome começa com a letra "C" e ordena os resultados pela data de nascimento
SELECT nome, nascimento FROM alunos WHERE nome LIKE 'C%' ORDER BY nascimento;

/* 7 */ -- Seleciona o gênero e conta quantos alunos há de cada gênero, agrupando os resultados
SELECT genero, COUNT(*) AS total FROM alunos GROUP BY genero;

/* 8 */ -- Seleciona o nome e a altura dos alunos e retorna apenas o registro com a maior altura
SELECT nome, altura FROM alunos ORDER BY altura DESC LIMIT 1;

/* 9 */ -- Seleciona o nome e o peso das alunas do gênero "F" (feminino) e retorna apenas o registro com o menor peso (em ordem ascendente)
SELECT nome, peso FROM alunos WHERE genero = 'F' ORDER BY peso ASC LIMIT 1;

/* 10 */ -- Calcula a média de peso de todos os alunos
SELECT AVG(peso) AS media_peso FROM alunos;

/* 11 */ -- Calcula a média de altura das alunas do gênero "F" (feminino)
SELECT AVG(altura) AS media_altura FROM alunos WHERE genero = 'F';