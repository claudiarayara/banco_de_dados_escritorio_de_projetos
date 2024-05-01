--------------------------------
-- Banco de Dados
-- Escritorio de Projetos - FASE 02
-- Claudia Rayara Alves da Silva
--------------------------------

--------------------------------
-- Script para criar as tabelas
--------------------------------

-- Tabela Construtora
CREATE TABLE Construtora 
(
  codigo NUMBER(8) PRIMARY KEY,
  nome VARCHAR2(100),
  nome_fantasia VARCHAR2(100)
);

-- Tabela Categoria
CREATE TABLE Categoria 
(
  codigo NUMBER(8) PRIMARY KEY,
  descricao VARCHAR2(100)
);

-- Tabela Obra
CREATE TABLE Obra 
(
  codigo NUMBER(8) PRIMARY KEY,
  nome VARCHAR(50),
  logradouro VARCHAR2(100),
  numero VARCHAR2(10),
  complemento VARCHAR2(50),
  id_construtora NUMBER(8) REFERENCES Construtora(codigo)
);

-- Tabela Trabalhador
CREATE TABLE Trabalhador 
(
  cpf VARCHAR2(15) PRIMARY KEY,
  nome VARCHAR2(100),
  salario NUMBER(10,2),
  id_obra NUMBER(8) REFERENCES Obra(codigo)
);

-- Tabela Equipamento
CREATE TABLE Equipamento 
(
  codigo NUMBER(8) PRIMARY KEY,
  nome VARCHAR2(100),
  valor_uso_diario NUMBER(10,2),
  id_categoria NUMBER(8) REFERENCES Categoria(codigo)
);

-- Tabela Telefone
CREATE TABLE Telefone 
(
  telefone VARCHAR2(20) PRIMARY KEY,
  id_construtora NUMBER(8) REFERENCES Construtora(codigo)
);

-- Tabela Obras_Equipamentos
CREATE TABLE Obra_Equipamento
(
  id_obra NUMBER(8) REFERENCES Obra(codigo),
  id_equipamento NUMBER(8) REFERENCES Equipamento(codigo),
  data_inicio DATE,
  data_final DATE
);