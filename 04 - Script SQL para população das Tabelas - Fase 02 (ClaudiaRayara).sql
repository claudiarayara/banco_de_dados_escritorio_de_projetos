--------------------------------
-- Banco de Dados
-- Escritorio de Projetos - FASE 02
-- Claudia Rayara Alves da Silva
--------------------------------

--------------------------------
-- Script para popular tabelas
--------------------------------

-- Construtora
INSERT INTO Construtora (codigo, nome, nome_fantasia) 
VALUES (10, 'Construtora Alfa S.A.', 'Alfa Incorporações');

-- Obras
INSERT INTO Obra (codigo, nome, logradouro, numero, complemento, id_construtora) 
VALUES (115, 'Condomínio dos Lagos', 'Travessa dos Lagos', '100', 'Norte', 10);
INSERT INTO Obra (codigo, nome, logradouro, numero, complemento, id_construtora) 
VALUES (116, 'Condomínio Araras', 'Avenida Rio Grande', '22', 'Lado A', 10);

-- Trabalhadores
INSERT INTO Trabalhador (cpf, nome, salario, id_obra) 
VALUES ('101.101.101-34', 'José Chaves', 2200.00, 115);
INSERT INTO Trabalhador (cpf, nome, salario, id_obra) 
VALUES ('102.102.102-91', 'Pedro Passos', 3502.18, 115);
INSERT INTO Trabalhador (cpf, nome, salario, id_obra) 
VALUES ('103.103.103-18', 'Maria Aparecida', 2800.87, 115);
INSERT INTO Trabalhador (cpf, nome, salario, id_obra) 
VALUES ('104.104.104-52', 'Carlos Dutra', 3100.00, 116);
INSERT INTO Trabalhador (cpf, nome, salario, id_obra) 
VALUES ('105.105.105-85', 'Mário Pires', 4323.29, 116);

-- Categorias
INSERT INTO Categoria (codigo, descricao) 
VALUES (1, 'Concretagem');
INSERT INTO Categoria (codigo, descricao) 
VALUES (2, 'Acesso e Elevação');
INSERT INTO Categoria (codigo, descricao) 
VALUES (3, 'Geradores e Compressores');
INSERT INTO Categoria (codigo, descricao) 
VALUES (4, 'Andaimes');
INSERT INTO Categoria (codigo, descricao) 
VALUES (5, 'Ferramenta Elétrica');

-- Equipamentos
INSERT INTO Equipamento (codigo, nome, valor_uso_diario, id_categoria) 
VALUES (301, 'Betoneira', 100.00, 1);
INSERT INTO Equipamento (codigo, nome, valor_uso_diario, id_categoria) 
VALUES (302, 'Cortadora de Piso', 10.00, 1);
INSERT INTO Equipamento (codigo, nome, valor_uso_diario, id_categoria) 
VALUES (303, 'Mangote', 30.50, 1);
INSERT INTO Equipamento (codigo, nome, valor_uso_diario, id_categoria) 
VALUES (304, 'Guincho', 250.00, 2);
INSERT INTO Equipamento (codigo, nome, valor_uso_diario, id_categoria) 
VALUES (305, 'Gerador', 451.00, 3);
INSERT INTO Equipamento (codigo, nome, valor_uso_diario, id_categoria) 
VALUES (306, 'Piso Metálico', 150.00, 4);
INSERT INTO Equipamento (codigo, nome, valor_uso_diario, id_categoria) 
VALUES (307, 'Furadeira de Bancada', 65.00, 5);
INSERT INTO Equipamento (codigo, nome, valor_uso_diario, id_categoria) 
VALUES (308, 'Parafusadeira', 37.00, 5);
INSERT INTO Equipamento (codigo, nome, valor_uso_diario, id_categoria) 
VALUES (309, 'Plaina', 25.00, 5);

-- Telefones
INSERT INTO Telefone (telefone, id_construtora) 
VALUES ('(51) 3333-3334', 10);
INSERT INTO Telefone (telefone, id_construtora) 
VALUES ('(51) 3333-3335', 10);
INSERT INTO Telefone (telefone, id_construtora) 
VALUES ('(51) 3333-3336', 10);

-- Obras_Equipamentos
INSERT INTO Obra_Equipamento (id_obra, id_equipamento, data_inicio, data_final) 
VALUES (115, 301, TO_DATE('18/03/2022', 'DD/MM/YYYY'), TO_DATE('24/10/2022', 'DD/MM/YYYY'));
INSERT INTO Obra_Equipamento (id_obra, id_equipamento, data_inicio, data_final) 
VALUES (115, 304, TO_DATE('20/04/2022', 'DD/MM/YYYY'), TO_DATE('02/08/2022', 'DD/MM/YYYY'));
INSERT INTO Obra_Equipamento (id_obra, id_equipamento, data_inicio, data_final) 
VALUES (115, 306, TO_DATE('06/07/2021', 'DD/MM/YYYY'), TO_DATE('18/07/2021', 'DD/MM/YYYY'));
INSERT INTO Obra_Equipamento (id_obra, id_equipamento, data_inicio, data_final) 
VALUES (115, 307, TO_DATE('04/03/2022', 'DD/MM/YYYY'), TO_DATE('20/03/2022', 'DD/MM/YYYY'));
INSERT INTO Obra_Equipamento (id_obra, id_equipamento, data_inicio, data_final) 
VALUES (115, 309, TO_DATE('04/08/2021', 'DD/MM/YYYY'), TO_DATE('10/08/2021', 'DD/MM/YYYY'));
INSERT INTO Obra_Equipamento (id_obra, id_equipamento, data_inicio, data_final) 
VALUES (116, 304, TO_DATE('22/10/2022', 'DD/MM/YYYY'), TO_DATE('25/10/2022', 'DD/MM/YYYY'));
INSERT INTO Obra_Equipamento (id_obra, id_equipamento, data_inicio, data_final) 
VALUES (116, 305, TO_DATE('07/03/2022', 'DD/MM/YYYY'), TO_DATE('10/03/2022', 'DD/MM/YYYY'));
INSERT INTO Obra_Equipamento (id_obra, id_equipamento, data_inicio, data_final) 
VALUES (116, 306, TO_DATE('12/09/2022', 'DD/MM/YYYY'), TO_DATE('21/09/2022', 'DD/MM/YYYY'));
INSERT INTO Obra_Equipamento (id_obra, id_equipamento, data_inicio, data_final) 
VALUES (116, 307, TO_DATE('16/08/2022', 'DD/MM/YYYY'), TO_DATE('24/08/2022', 'DD/MM/YYYY'));
INSERT INTO Obra_Equipamento (id_obra, id_equipamento, data_inicio, data_final) 
VALUES (116, 308, TO_DATE('23/10/2022', 'DD/MM/YYYY'), TO_DATE('25/10/2022', 'DD/MM/YYYY'));

--------------------------------
-- 2) Criar os dados de uma construtora que tenha o seu nome (nome do aluno) e inserir os dados na tabela correspondente;
--------------------------------

-- Construtora
INSERT INTO Construtora (codigo, nome, nome_fantasia) 
VALUES (20, 'Claudia Rayara S.A.', 'Rayara Incorporações & Cia');

--------------------------------
-- 3) Criar 2 obras e 5 funcionários para cada uma dessas obras (i.e. 10 funcionários no total); 
--------------------------------

-- Obras
INSERT INTO Obra (codigo, nome, logradouro, numero, complemento, id_construtora) 
VALUES (200, 'Residencial Nova Era', 'Rua da Construção', '123', 'Lado A', 20);
INSERT INTO Obra (codigo, nome, logradouro, numero, complemento, id_construtora) 
VALUES (205, 'Residencial Reserva', 'Avenida da Engenharia', '456', 'Lado B', 20);

--Funcionários
INSERT INTO Trabalhador (cpf, nome, salario, id_obra) 
VALUES ('665.538.672-16', 'Adriano Felix Figueiredo', 2445.00, 200);
INSERT INTO Trabalhador (cpf, nome, salario, id_obra)
VALUES ('201.443.757-29', 'Raphael Pedroso da Cunha', 3010.00, 200);
INSERT INTO Trabalhador (cpf, nome, salario, id_obra)
VALUES ('762.026.421-30', 'Daniele Portela Barros', 5900.00, 200);
INSERT INTO Trabalhador (cpf, nome, salario, id_obra)
VALUES ('517.235.522-75', 'Valéria Baptista Ramos', 3041.00, 200);
INSERT INTO Trabalhador (cpf, nome, salario, id_obra)
VALUES ('604.068.234-56', 'Magna Souza Mata', 2870.00, 200);
INSERT INTO Trabalhador (cpf, nome, salario, id_obra)
VALUES ('601.891.151-57', 'Anna Billé da Paixão', 1864.00, 205);
INSERT INTO Trabalhador (cpf, nome, salario, id_obra)
VALUES ('162.985.058-65', 'Manoel Gomes', 3810.00, 205);
INSERT INTO Trabalhador (cpf, nome, salario, id_obra)
VALUES ('716.504.522-84', 'Vera Cruz Rabelo', 2348.00, 205);
INSERT INTO Trabalhador (cpf, nome, salario, id_obra)
VALUES ('772.599.095-01', 'Ryan Gomes Conceição', 2143.00, 205);
INSERT INTO Trabalhador (cpf, nome, salario, id_obra)
VALUES ('723.155.158-07', 'Renan Braga Viana', 6110.00, 205);

--------------------------------
-- 4) Alocar pelo menos 4 equipamentos (de categorias diferentes) à primeira obra que você criou;
--------------------------------
INSERT INTO Obra_Equipamento (id_obra, id_equipamento, data_inicio) 
VALUES (200, 301, TO_DATE('17/11/2023', 'DD/MM/YYYY'));
INSERT INTO Obra_Equipamento (id_obra, id_equipamento, data_inicio) 
VALUES (200, 304, TO_DATE('17/11/2023', 'DD/MM/YYYY'));
INSERT INTO Obra_Equipamento (id_obra, id_equipamento, data_inicio) 
VALUES (200, 305, TO_DATE('17/11/2023', 'DD/MM/YYYY'));
INSERT INTO Obra_Equipamento (id_obra, id_equipamento, data_inicio) 
VALUES (200, 306, TO_DATE('17/11/2023', 'DD/MM/YYYY'));