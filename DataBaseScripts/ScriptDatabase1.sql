USE master
go
drop database BDBookCard
go
create database BDBookCard
go
USE BDBookCard
create table Livro(
 
LIVID int identity(1,1) not null primary key,
LIVNOME VARCHAR(100)
)
GO 
CREATE TABLE CAPITULO(

CAPID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
CAPDESCRICAO VARCHAR(100) NOT NULL,
LIVID INT NOT NULL FOREIGN KEY REFERENCES LIVRO(LIVID)
)
GO
CREATE TABLE LISTCARD(

LISID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
LISNOME VARCHAR(100) NOT NULL,
LISOVERVIEW VARCHAR(MAX) NULL,
)
GO
CREATE TABLE CARDTEXTO(
CARID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
CARTEXTO VARCHAR(MAX) NOT NULL,
)
GO
CREATE TABLE CLASSIFICACAOPALAVRA(
CLAID  INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
CLADESCRICAO VARCHAR(100) NOT NULL,
)
GO
CREATE TABLE PALAVRA(

PALID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
PALALAVRA VARCHAR(100)NOT NULL,
PALRELEVANTE INT NOT NULL DEFAULT 0,
)

CREATE TABLE PALAVRACARD(
PACID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
PALID  INT NOT NULL FOREIGN KEY REFERENCES PALAVRA(PALID),
CARID  INT NOT NULL FOREIGN KEY REFERENCES CARDTEXTO(CARID),
CLAID  INT  NULL FOREIGN KEY REFERENCES CLASSIFICACAOPALAVRA(CLAID),
)

select * from Livro

alter table livro
add LIVAUTOR VARCHAR(100) NULL

ALTER TABLE livro
DROP COLUMN LIVAUTOR;


ALTER TABLE LISTCARD
add  CAPID INT NOT NULL
GO
ALTER TABLE LISTCARD
ADD FOREIGN KEY (CAPID) REFERENCES CAPITULO(CAPID)

ALTER TABLE CARDTEXTO
add LISID INT NOT NULL
GO
ALTER TABLE CARDTEXTO
ADD FOREIGN KEY (LISID) REFERENCES LISTCARD(LISID)
GO

SELECT * FROM CARDTEXTO