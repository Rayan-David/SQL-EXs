CREATE DATABASE cinema;
USE cinema;

CREATE TABLE filme(
id INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(150) NOT NULL,
duracao_min INT NOT NULL,
classificacao VARCHAR(5)
);

CREATE TABLE sala(
numero INT PRIMARY KEY,
capacidade INT NOT NULL
);

CREATE TABLE sessao(
id INT AUTO_INCREMENT PRIMARY KEY,
data_hora DATETIME NOT NULL,
filme_id INT NOT NULL,
sala_numero INT NOT NULL,
FOREIGN KEY(filme_id)
REFERENCES filme(id),
FOREIGN KEY(sala_numero)
REFERENCES sala(numero)
);

CREATE TABLE ingresso(
sessao_id INT,
FOREIGN KEY(sessao_id)
REFERENCES sessao(id),
poltrona VARCHAR(4), 
PRIMARY KEY (sessao_id, poltrona),
preco DECIMAL(6,2) NOT NULL
);

CREATE TABLE promocao(
id INT PRIMARY KEY,
descricao VARCHAR(100) NOT NULL
);

ALTER TABLE filme ADD genero VARCHAR(30);

DROP TABLE promocao;

CREATE DATABASE cinema_teste;
DROP DATABASE cinema_teste;

SHOW DATABASES;