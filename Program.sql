/*
Conteúdo e imagens> Saint Leonardo Buta

-----Built-in functions     pt2

Funções pré-existentes que auxiliam na manipulação de dados, como por exemplo contar, somar, média, etc...

---COUNT

SELECT COUNT (*) FROM Produtos
				// \/nome da coluna
SELECT COUNT (*) QuantidadeProdutos FROM Produtos

----SUM

SELECT SUM(Preco) PrecoTotal FROM Produtos

---MAX 

SELECT MAX(Preco) ProdutoMaisCaro FROM Produtos

SELECT MAX(Preco) ProdutoMaisCaro FROM Produtos WHERE Tamanho = 'M'

---MIN 


SELECT MIN(Preco) ProdutoMaisBarato FROM Produtos

SELECT MIN(Preco) ProdutoMaisBarato FROM Produtos WHERE Tamanho = 'M'

---AVG

MÉDIA

SELECT AVG(Preco) MediaProdutos FROM Produtos

---CONCATENAR

--forma 1

SELECT 
	Nome,
	Cor
FROM Produtos

Forma 2 concatenada->>>>

SELECT 
	Nome + ' - ' + Cor
FROM Produtos

OU

SELECT 
	Nome + ',Cor: - ' + Cor NomeProduto
FROM Produtos

ou 
Pra ficar melhor

SELECT 
	Nome + ',Cor: - ' + Cor + ' - ' +  Genero NomeProduto
FROM Produtos

---UPPER LOWER

SELECT 
	Nome + ',Cor: - ' + Cor + ' - ' +  Genero NomeProdutoCompleto,
	UPPER(Nome) Nome, 
	LOWER(Cor) Cor
FROM Produtos

---CRIAR DATA MANUALMENTE

ExemploDb *DatabaseCriada>Tables>tabelaDesejada>botãoDIreito>Design> Cria um tipo> DataCadastro e coloca datetime2 + control S pra salvar

---DATA SCRIPT

ALTER TABLE Produtos
ADD DataCadastro DATETIME2

--UPDATE CONCATENADO


UPDATE Produtos SET DataCadastro = GETDATE()

---DELETAR E ADD COLUMN

DROP COLUMN DataCadastro

ADD DataCadastro DATETIME2

---FORMAT

SELECT 
	Nome + ',Cor: - ' + Cor + ' - ' +  Genero NomeProdutoCompleto,
	UPPER(Nome) Nome, 
	LOWER(Cor) Cor,
	FORMAT(DataCadastro, 'dd/MM/yyyy HH:mm') Data   <-------
FROM Produtos

---GROUP BY

Para saber quantos produtos tem de cada tipo na tabela


SELECT 
	Tamanho,
	COUNT(*) Quantidade
	
FROM Produtos
WHERE Tamanho <> ''      //Tamanho diferente de 0. WHERE sempre antes do GROUP BY
GROUP BY Tamanho
ORDER BY Quantidade DESC

---Seguir sempre a ordem

SELECT> WHERE >GROUP BY > ORDER BY


---PRIMARY KEY PK & FOREIGN KEY FK

Primary Key = Chave única que identifica cada registo na tabela.
Foreign Key = Chave que identifica o registro existente em outra tabela.

Design>ID>SET PRIMARY KEY> CONTROL S

SELECT * FROM Clientes

CREATE TABLE Enderecos (
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	IdCliente int NULL,
	Rua varchar(255) NULL,
	Bairro varchar(255) NULL,
	Cidade varchar(255) NULL,
	Estado char(2) NULL,

	CONSTRAINT FK_Enderecos_Clientes FOREIGN KEY(IdCliente)          <-CONSTRAINT = Restrição ligada à "FK_Enderecos_Clientes"
	REFERENCES Clientes(Id)
)

---INNER JOIN
Juntar tabelas.


SELECT * FROM Enderecos WHERE IdCliente = 4

SELECT
	*
FROM
	Clientes
	INNER JOIN Enderecos ON Clientes.Id = Enderecos.IdCliente
		WHERE Clientes.Id = 4









ex: 

Ao realizar um UPDATE, temos que ter um certo cuidado, caso contrário podemos alterar dados indevidamente. A não 
ser que você queira atualizar todos os registros, um UPDATE deve 
er sempre acompanhado por um:
r: WHERE

Cada banco de dados possui uma maneira diferente de se conectar, e com o SQL Server não é diferente. 
Para se conectar a uma instância do SQL Server versão Express, usamos a conexão:
r: localhost\sqlexpress

Existe um comando no DQL (Data Query Language) usado para obter dados de uma tabela. 
Esse comando é conhecido como:
r: SELECT

Para selecionar todas as colunas de uma tabela, usamos um caractere especial, que é o:
r: *

Existe um comando no DDL (Data Definition Language) usado para criar uma tabela. 
Esse comando é conhecido como:
r: CREATE TABLE

Existe uma cláusula usada para ordenar os resultados obtidos de sua consulta. 
Estamos falando do:
r: ORDER BY

Em um banco de dados relacional, podemos representar dados do tipo texto. No C# utilizamos o tipo 
string, e no banco de dados usamos:
r: varchar ou text.

Podemos manipular dados de uma tabela, como inserir, atualizar e remover dados. 
Esses comandos juntos são conhecidos como:
r: DML (Data Control Language)

No banco de dados relacional, existe um conceito que tem como objetivo agrupar um contexto, isto é, 
separar os dados de forma lógica, como por exemplo separar os dados entre 
diferentes sistemas. Estamos falando de:
r: Database

Todo banco de dados relacional usa uma linguagem de consulta e manipulação de dados. 
Essa linguagem tem o nome de:
r: SQL









boot.

em sql server management
database>new database>

SELECT * FROM ***** = todos os dados da tabela
ORDER BY **** = ordenar pelo ? nome?numero?idade? 
ORDER BY **** DESC = ordenar pelo ? nome?numero?idade? DECRESCENTE
mais de um order?
ORDER BY Nome, Sobrenome

* = todas as colunas da tabela 

SELECT Nome, Sobrenome, Email FROM Clientes

--------WHERE
Antes do ORDER BY

SELECT * FROM Clientes
WHERE Nome = 'Adam' OR Sobrenome = 'Reynolds'   Pode usar OR = Buscar nome ou sobrenome, se achar nome ele não vai    //sempre aspas simples
ORDER BY Nome, Sobrenome                                                                     buscar pelo sobrenome.

já o WHERE Nome = 'Adam' AND Sobrenome = 'Reynolds' vai buscar os 2 casos

ex: WHERE AceitaComunicados = 1
    rows = 453 = numero de pessoas que aceitaram os comunicados.

-------------LIKE

SELECT * FROM Clientes
WHERE Nome LIKE 'G%'   <- Busca todos que começam por G e % significa que vai ignorar 
ORDER BY Nome, Sobrenome              tudo e qualquer caractere que venha desde então

Busca parcial = LIKE

WHERE Nome LIKE '%G%'                 Busca todos que tem letra g antes e <%G% todos que tem g depois

----INSERT


SELECT * FROM Clientes
WHERE Nome LIKE 'G%'   
ORDER BY Nome, Sobrenome 

INSERT INTO Clientes (Nome, Sobrenome , Email, AceitaComunicados, DataCadastro)
VALUES ('Denis', 'Hara, 'email@email.com', 1, GETDATE())    //HORA E DATA ATUAL = GETDATE()

Executar = tanto selecionando e apertando f5 como apertando f5 para executar tudo

INSERT INTO + NOME DA TABELA + (ITENS)
VALUE (ORDEM DOS ITENS)

INSERT OMITINDO AS COLUNAS

INSERT INTO Clientes VALUES ('Denis', 'Hara', 'email@email.com', 1, GETDATE())   

ID= identificador único, nao precis declarar. garantir que o usuário é unico.

QUERY Tem que apontar para seu database, ou não vai funcionar.

-----UPDATE



SELECT * FROM Clientes WHERE Id = 343

UPDATE Clientes 
SET Email = 'email@atualizado.com'
    AceitaComunicados = 0
WHERE Id = 343

---BEGIN

BEGIN TRAN
ROLLBACK - executar 

Possível desfazer alterações
Atualizar sem o WHERE atualiza todo o banco de dados.
nunca atualizar sem ele.

-----DELETE


SELECT * FROM Clientes WHERE Nome = 'Denis'

DELETE Clientes
WHERE Id = 1004

----CHAR VARCHAR

CHAR = caractére, dados em que se tem certeza da quantidade de caractere: Estados do brasil 2 caractéres char(2)
VARCHAR = VARIÁVEL CARACTERE: não tem certeza de quantos caractéres serão usados. ex: Nomes varchar(200)

bit boolean 
int
bigint
decimal = monetário 

Datas datetime2 = data e hora
date - data
time - hora


----CREATE

Criar tabela:

CREATE TABLE Produtos (
	Id int IDENTITY(1,1) PRIMARY KEY NOT NULL, = OBRIGATÓRIO   -  PRIMARY KEY = GARANTE ID ÚNICO E QUE NÃO VAI SE REPETIR 
	Nome varchar(255) NOT NULL, //255 = tamanho máximo que o meu campo nome vai aceitar.
	Cor varchar(50) NULL, //Não sabe a cor
	Preco decimal(13, 2) NOT NULL,  //13 = digitos e 2 = casas decimais.
    Tamanho varchar(5) NULL, 
	Genero char(1) NULL,   //f/M/U = genero de tamanho pre definido

)


Database: É uma coleção de dados estruturados, agrupados de forma concisa. É
um composto de tabelas, procedures, views, etc.
Cada sistema aposta para um database específico.







A linguagem SQL( Structured Query Language): É a linguagem de banco de dados 
usada para consulta e manipulação de dados.

matriz de linhas e colunas,
Para inserir e manipular dados. update, deletar/ consulta, utilizamos a linguagem SQL

A linguagem SQL:

DDL - DATA DEFINITION LANGUAGE
DCL - DATA CONTROL LANGUAGE
DML - DATA MANIPULATION LANGUAGE
TCL - TRANSACTION CONTROL LANGUAGE
DQL - DATA QUERY LANGUAGE -> SELECT 










Em um banco de dados relacional, existe um conceito muito importante, conhecido 
também por armazenar dados estruturados. O nome desse conceito é:
r: tabela


Existem diversos tipos de banco de dados, sendo dois deles amplamente 
utilizados hoje.  Estamos falando do:
r: Banco de dados relacional e não relacional.


Toda aplicação precisa de um lugar para salvar dados, e o principal local para salvar essas informações 
é o banco de dados. O banco de dados é amplamente utilizado em praticamente 
todos os sistemas, pois:
r: Possui a capacidade de gravar e obter dados de maneira dácil, crescer dinâmicamente e atender a diversas requisições dos usuários

Existe um software conhecido por permitir acessar e gerenciar um banco de dados de maneira visual, 
semelhante a uma IDE. Esse software é conhecido como:
r: DBMS.










DBMS:
Database Management System: É um software utilizado para acessar, manipular e
monitorar um sistema de banco de dados.

Um programa utilizado para cessar o banco de dados de maneira simples e fácil






Banco de dados não relacional:

Banco de dados onde os dados não são armazenados em tabela, e sim armazenados de
maneira não estruturadas ou semi-estruturadas.

Usam vários tipos como:
document databases, key-value databases, wide-comumn stores, e graph databases.

estrutural = regras rígidas para armazenar um tipo de dado. 
semi-estruturado = Tem uma estrutura, mas não tem uma regra tal rígida.
como json, pode ter valor ou não. Pode ser inteiro ou texto.
não estruturado = não seguem um padrão para uma análse.
Pdf, musica, arquivo de texto, posts. dado que variam, não obedecem nenhum tipo de regra.

flexibilidade






Banco de dados relacional: Mais utilizado atualmente 23.01.2023. Composto de
dados estruturados, sendo organizado em tabelas, com colunas e linhas, que
se relacionam entre si.
-> Dados que vc consegue armazenar e separar uma informação, de uma forma que vc possa obter facilmente.

MySql blog pessoal, pequenas empresas. menos robusto, não tem tanta disponilidade porém gratuito.

Oracle Database: mais robusto + disponibilidade 100% online
SQL server todas opçoes de disponibilidade + é pago.

Detalhes na png



Banco de dados é uma coleção organizada de informações (ou dados) estruturadas, 
normalmente armazenadas eletronicamente em um sistema de computador.
Ou seja:
Todo sistema vc vai precisar armazenar algum tipo de dado, ou seja vai precisar inserir, atualizar e recuperar esse dado,
bem também como como a possibilidade de deletar esse dado quando ele nao for mais util.
Então como todo sistema ele vai armazenar dados em um lugar, esse lugar é o nosso banco de dados. 
Ele é um software que vai fazer todo esse trabalho de armazenar os dados de forma estruturada, para que vc possa
recuperar esses dados depois .
Dado estruturado: organizado de uma maneira que vc consiga identificar e recuperar esse dado depois.

*/