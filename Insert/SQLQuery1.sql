USE BDBookCard
GO
SELECT * FROM LIVRO
INSERT LIVRO(LIVNOME,LIVAUTOR) VALUES ('DOM CASMURRO','MACHADO DE ASSIS')
INSERT LIVRO(LIVNOME,LIVAUTOR) VALUES ('VIDAS SECAS','GLACILIANO RAMOS')
GO
INSERT CAPITULO(CAPDESCRICAO,LIVID) VALUES ('MUDAN�A',2)
INSERT CAPITULO(CAPDESCRICAO,LIVID) VALUES ('FABIANO',2)
INSERT CAPITULO(CAPDESCRICAO,LIVID) VALUES ('CADEIA',2)
INSERT CAPITULO(CAPDESCRICAO,LIVID) VALUES ('SINHA VITORIA',2)
INSERT CAPITULO(CAPDESCRICAO,LIVID) VALUES ('O MENINO MAIS NOVO',2)
INSERT CAPITULO(CAPDESCRICAO,LIVID) VALUES ('O MENINO MAIS VELHO',2)
INSERT CAPITULO(CAPDESCRICAO,LIVID) VALUES ('INVERNO',2)
INSERT CAPITULO(CAPDESCRICAO,LIVID) VALUES ('FESTA',2)
INSERT CAPITULO(CAPDESCRICAO,LIVID) VALUES ('BALEIA',2)
INSERT CAPITULO(CAPDESCRICAO,LIVID) VALUES ('CONTAS',2)
INSERT CAPITULO(CAPDESCRICAO,LIVID) VALUES ('O SOLDADO AMARELO',2)
INSERT CAPITULO(CAPDESCRICAO,LIVID) VALUES ('O MUNDO COBERTO POR PENAS',2)
INSERT CAPITULO(CAPDESCRICAO,LIVID) VALUES ('FUGA',2)
SELECT * FROM CAPITULO WHERE LIVID = 2

INSERT LISTCARD (LISNOME,LISOVERVIEW,CAPID) VALUES ('INFELICIDADE',NULL,1)
INSERT LISTCARD (LISNOME,LISOVERVIEW,CAPID) VALUES ('DESGRA�A',NULL,1)
Insert CARDTEXTO (CARTEXTO,LISID) values (
    'Na plan�cie avermelhada os juazeiros alargavam duas manchas verdes.
	  Os infelizes tinham caminhado o dia inteiro, estavam cansados e 
	  famintos. Ordinariamente andavam pouco, mas como haviam repousado 
	  bastante na areia do rio seco, a viagem progredira bem tr�s l�guas.
	  Fazia horas que procuravam uma sombra. A folhagem dos juazeiros apareceu 
	  longe, atrav�s dos galhos pelados da catinga rala',
	1)


