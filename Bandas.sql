create database test;
use test;

CREATE TABLE Banda (
    Codigo_banda INTEGER NOT NULL AUTO_INCREMENT,
    Nome_banda VARCHAR(20) NOT NULL,
    PRIMARY KEY (Codigo_banda)
);

CREATE TABLE Musico (
    Codigo_musico INTEGER NOT NULL AUTO_INCREMENT,
    Codigo_bandaFK INTEGER NOT NULL,
    Nome_musico VARCHAR(20),
    Tempo_experiencia VARCHAR(20),
    PRIMARY KEY (Codigo_musico),
    FOREIGN KEY (Codigo_bandaFK) REFERENCES Banda (Codigo_banda)
);

CREATE TABLE Instrumentos (
    Nome_instrumento VARCHAR(20),
    Cor_instrumento VARCHAR(15),
    Codigo_musicoFK INTEGER NOT NULL,
    PRIMARY KEY (Nome_instrumento),
    FOREIGN KEY (Codigo_musicoFK) REFERENCES Musico (Codigo_musico)
);

CREATE TABLE Cidade (
    Nome_Cidade VARCHAR(50),
    Nome_bandaFK INTEGER NOT NULL,
    PRIMARY KEY (Nome_Cidade),
    FOREIGN KEY (Nome_bandaFK) REFERENCES Banda (Codigo_banda)
);

INSERT INTO Banda (Nome_banda) VALUES ('Magia');
INSERT INTO Banda (Nome_banda) VALUES ('Carniçal');
INSERT INTO Banda (Nome_banda) VALUES ('Rato M0rto');

SELECT * FROM Banda;

INSERT INTO Musico (Codigo_bandaFK, Nome_musico, Tempo_experiencia) 
VALUES (1, 'Rael', '3 anos');
INSERT INTO Musico (Codigo_bandaFK, Nome_musico, Tempo_experiencia) 
VALUES (2, 'Emanuel', '10 anos');
INSERT INTO Musico (Codigo_bandaFK, Nome_musico, Tempo_experiencia) 
VALUES (3, 'Felipe', '1 Mês');

SELECT * FROM Musico;

INSERT INTO Instrumentos (Nome_instrumento, Cor_instrumento, Codigo_musicoFK) 
VALUES ('Guitarra', 'Vermelho', 1);
INSERT INTO Instrumentos (Nome_instrumento, Cor_instrumento, Codigo_musicoFK) 
VALUES ('Bateria', 'Dourado', 2);
INSERT INTO Instrumentos (Nome_instrumento, Cor_instrumento, Codigo_musicoFK) 
VALUES ('Trompete', 'Prata', 3);

select* from Instrumentos;

INSERT INTO Cidade (Nome_Cidade, Nome_bandaFK)
 VALUES ('Blumenau', 2);
INSERT INTO Cidade (Nome_Cidade, Nome_bandaFK)
 VALUES ('Pomerode', 1);
INSERT INTO Cidade (Nome_Cidade, Nome_bandaFK) 
VALUES ('Itajai', 3);

select * from Cidade