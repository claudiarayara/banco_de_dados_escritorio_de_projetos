# :page_with_curl: Introdução:
O projeto da disciplina consiste na modelagem e na implementação de uma solução de banco de dados a partir do universo de discurso a seguir.

## :earth_americas: Universo de Discurso:

Um conglomerado de construtoras deseja gerir suas obras e seus recursos.

1. Para cada construtora deseja-se armazenar:
    - código;
    - nome;
    - um ou mais telefones;
    - um nome fantasia *(opcionalmente)*;

2. Os trabalhadores têm:
    - CPF;
    - nome;
    - salário;
    
3. Uma construtora possui múltiplas obras, e cada obra tem:
    - código;
    - nome;
    - sendereço:
        - logradouro;
        - número;
        - complemento *(opcionalmente)*;

4. Uma obra tem vários trabalhadores alocados, mas cada trabalhador está associado a apenas uma única obra;

5. Para cada obra são alocados um ou mais equipamentos que possuem:
    - código;
    - nome;
    - valor de uso diário;

6. Cada equipamento pertence a uma determinada categoria;

7. Um equipamento pode ser alocado em várias obras e, para isso, armazena-se a data de início e a data de término do uso do equipamento;

8. Para as categorias, deseja-se armazenar:
    - código;
    - descrição;

## 📌 Enunciado da Fase 02:
A partir do modelo conceitual gerado na Fase 1 e dos dados de exemplo fornecidos no enunciado, produzir o esquema lógico relacional equivalente, compatível com o SGBD Oracle, bem como popular as tabelas e realizar algumas consultas solicitadas.

- [x]  1) Gerar o esquema lógico relacional na ferramenta BR Modelo;  
![ClaudiaRayara_Modelo_Conceitual_Fase01](https://github.com/claudiarayara/banco_de_dados_escritorio_de_projetos/assets/119415559/600a2e7f-6097-4465-bd90-fa01d9017efe)
![02 - ClaudiaRayara_Modelo_Lógico_Fase02](https://github.com/claudiarayara/banco_de_dados_escritorio_de_projetos/assets/119415559/1cb658ac-eaa4-4725-9ed3-7547aa5c728c)
- [x]  2) Criar os dados de uma construtora que tenha o seu nome (nome do aluno) e inserir os dados na tabela correspondente;
- [x]  3) Criar 2 obras e 5 funcionários para cada uma dessas obras (i.e. 10 funcionários no total);
- [x]  4) Alocar pelo menos 4 equipamentos (de categorias diferentes) à primeira obra que você criou;
- [x]  5) Gerar um script SQL compatível com o SBGB Oracle para popular as tabelas;
- [x]  6) Codificar em SQL quatro das seguintes consultas (escolha apenas 4 das 6 consultas abaixo; se você responder mais de 4, apenas as 4 primeiras serão consideradas):
    - [x]  a) Selecionar CPFs e nomes dos trabalhadores que ganham mais do que 2.500,00;  
  **SELECT cpf, nome FROM Trabalhador WHERE salario > 2500.00;**  
  ![Captura de tela 2023-11-17 140301](https://github.com/claudiarayara/banco_de_dados_escritorio_de_projetos/assets/119415559/df224030-fb28-4c26-a48e-3a8226bd47fc)
    - [x]  b) Selecionar nomes e salários dos trabalhadores da empresa ALFA, ordenados em ordem alfabética crescente;  
  **SELECT nome, salario FROM Trabalhador WHERE id_obra IN (SELECT codigo FROM Obra
WHERE id_construtora = 10) ORDER BY nome ASC;**  
![Captura de tela 2023-11-17 140311](https://github.com/claudiarayara/banco_de_dados_escritorio_de_projetos/assets/119415559/49f56708-ec36-45a2-88e2-66bd9231b85e)
    - [ ]  c) Selecionar o total gasto em valores de diárias em uso de equipamentos da obra Condomínio Lagos no mês de março de 2022.
    - [x]  d) Calcular e exibir a folha de pagamento de cada obra. Uma folha de pagamento é determinada pela soma dos salários dos seus trabalhadores.  
  **SELECT id_obra, SUM(salario) AS folha_pagamento FROM Trabalhador GROUP BY id_obra;**  
![Captura de tela 2023-11-17 140320](https://github.com/claudiarayara/banco_de_dados_escritorio_de_projetos/assets/119415559/6c6bab82-3437-4b17-9d2c-91dab27245dc)
    - [x]  e) Selecionar os equipamentos que nunca foram utilizados em nenhuma obra.  
  **SELECT * FROM Equipamento WHERE codigo NOT IN (SELECT DISTINCT id_equipamento
FROM Obra_Equipamento);**   
![Captura de tela 2023-11-17 140330](https://github.com/claudiarayara/banco_de_dados_escritorio_de_projetos/assets/119415559/6aea6cf3-b9ea-44a8-8405-dd75a2508ee1)
    - [ ]  f) Listar as categorias de equipamentos utilizadas nas obras da construtora ALFA.
- [x]  7) Produzir um arquivo em formato JSON equivalente a todos os dados relacionados à construtora ALFA, incluindo suas obras e seus respectivos trabalhadores. Use o conceito de dados agregados (e não de relacionamentos via “_id”). Em outras palavras, deverá haver apenas 1 objeto principal (sendo todos os demais agregados deste objeto).

---

## 📌Resultados esperados:
1. Modelo lógico relacional modelado na ferramenta BR Modelo;
2. Script SQL para criação das tabelas;
3. Script SQL para população das tabelas;
4. Script SQL com os comandos das 4 consultas escolhidas;
5. Arquivo JSON com os dados da construtora ALFA.
