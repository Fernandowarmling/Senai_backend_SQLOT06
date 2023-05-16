use mercado;

CREATE TABLE vendedor (
    idvendedor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    salario FLOAT,
    data_nasc DATE
);