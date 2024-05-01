--------------------------------
-- Banco de Dados
-- Escritorio de Projetos - FASE 02
-- Claudia Rayara Alves da Silva
--------------------------------

--------------------------------
-- Script com os Comandos das 4 consultas escolhidas;
--------------------------------

--------------------------------
-- a) Selecionar CPFs e nomes dos trabalhadores que ganham mais do que 2.500,00;
--------------------------------
SELECT cpf, nome FROM Trabalhador WHERE salario > 2500.00;

--------------------------------
-- b) Selecionar nomes e salários dos trabalhadores da empresa ALFA, ordenados em ordem alfabética crescente;
--------------------------------
SELECT nome, salario FROM Trabalhador WHERE id_obra IN (SELECT codigo FROM Obra WHERE id_construtora = 10) ORDER BY nome ASC;

--------------------------------
-- d) Calcular e exibir a folha de pagamento de cada obra. Uma folha de pagamento é determinada pela soma dos salários dos seus trabalhadores.
--------------------------------
SELECT id_obra, SUM(salario) AS folha_pagamento FROM Trabalhador GROUP BY id_obra;

--------------------------------
-- e) Selecionar os equipamentos que nunca foram utilizados em nenhuma obra.
--------------------------------
SELECT * FROM Equipamento WHERE codigo NOT IN (SELECT DISTINCT id_equipamento FROM Obra_Equipamento);