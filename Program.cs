/*
Conteúdo e imagens> Saint Leonardo Buta

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