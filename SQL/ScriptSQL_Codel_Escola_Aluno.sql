-- Criação do banco de dados "codel"
CREATE DATABASE codel;

-- Seleciona o banco de dados "codel" para uso
USE codel;

-- ATENÇÃO: O comando a seguir apaga todo o banco de dados "codel"!
-- Tenha certeza do que está fazendo antes de executar esta instrução.
DROP DATABASE codel; /* apaga tudo! cuidado!  */

-- Criação do banco de dados "escola"
CREATE DATABASE escola;

-- Seleciona o banco de dados "escola" para uso
USE escola;

-- ATENÇÃO: O comando a seguir apaga todo o banco de dados "escola"!
-- Tenha certeza do que está fazendo antes de executar esta instrução.
DROP DATABASE escola;

-- Criação do banco de dados "codel" com opções de caracteres padrão
CREATE DATABASE codel 
DEFAULT CHARACTER SET utf8        -- Define o conjunto de caracteres padrão como utf8 (Unicode)
DEFAULT COLLATE utf8_general_ci;  -- Define a regra de ordenação padrão para o conjunto de caracteres utf8

-- Seleciona o banco de dados "codel" para uso
USE codel;

-- Criação da tabela "pessoa"
CREATE TABLE pessoa (
    nome VARCHAR(50),       -- Campo de texto com no máximo 50 caracteres para armazenar o nome da pessoa
    idade INT(3),           -- Número inteiro com no máximo 3 dígitos para armazenar a idade da pessoa
    sexo CHAR(1),           -- Caractere com exatamente 1 caractere para representar o sexo da pessoa
    profissao VARCHAR(30),  -- Campo de texto com no máximo 30 caracteres para armazenar a profissão da pessoa
    residencia VARCHAR(30)  -- Campo de texto com no máximo 30 caracteres para armazenar o endereço de residência
);

-- Descrição da estrutura da tabela "pessoa"
DESCRIBE pessoa;

-- Consulta para selecionar todos os registros da tabela "pessoa"
SELECT * FROM pessoa;

-- Exclusão da tabela "pessoa"
DROP TABLE pessoa;

-- Criação da tabela "aluno"
CREATE TABLE aluno (
    nome VARCHAR(30),                           -- Campo de texto com no máximo 30 caracteres para armazenar o nome do aluno
    idade TINYINT(3),                           -- Número inteiro com no máximo 3 dígitos para armazenar a idade do aluno
    sexo ENUM('m', 'f', 'o'),                   -- Tipo ENUM com opções fixas: 'm' para masculino, 'f' para feminino, 'o' para outro
    peso DECIMAL(4, 1),                         -- Número decimal com 4 dígitos no total, sendo 1 deles após a vírgula, para armazenar o peso do aluno
    altura DECIMAL(3, 2),                       -- Número decimal com 3 dígitos no total, sendo 2 deles após a vírgula, para armazenar a altura do aluno
    nacionalidade VARCHAR(25) DEFAULT 'Brasil'  -- Campo de texto com no máximo 25 caracteres para armazenar a nacionalidade do aluno, tendo 'Brasil' como valor padrão
);