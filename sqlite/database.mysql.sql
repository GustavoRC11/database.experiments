-- ---------------------------- --
-- Cria o banco de dados "mydb" --
-- ---------------------------- --

-- Apaga o banco de dados caso exista
-- CUIDADO! Só faça isso em desenvolvimento
DROP DATABASE IF EXISTS mydb;

-- Cria o banco de dados com suporte a UTF-8
CREATE DATABASE mydb CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Selecina o banco de dados para os comandos a baixo
USE mydb;

-- Apaga o banco de dados caso exista
-- CUIDADO! Só faça isso em desenvolvimento
DROP DATABASE IF EXISTS content;
DROP DATABASE IF EXISTS user;

-- Cirar a tabela "user"
CREATE TABLE user (
	u_id INT PRIMARY KEY AUTO_INCREMENT,
    u_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    u_name VARCHAR(150) NOT NULL,
    u_email VARCHAR(255) NOT NULL,
    u_password VARCHAR(128) NOT NULL
);

-- Cria a tabela "content"
CREATE TABLE content (
	c_id INT PRIMARY KEY AUTO_INCREMENT,
    c_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    c_title VARCHAR(128) NOT NULL,
    c_text MEDIUMTEXT,
    c_status ENUM ('on', 'off', 'del') DEFAULT 'on',
    c_owner INT,
    FOREIGN KEY (c_owner) REFERENCES user (u_id)
    );
    
    -- Cadastra alguns "user" para experimentos
INSERT INTO user 
( u_name, u_email, u_password ) VALUES
( "Joca da Silva", "jocasilva@email.com", SHA2("Senha@123",256)),
("Gutemberg de Souza", "souza@email.com", SHA2("sena@123",256)),
("Maria da Guia", "guia@eamil.com", SHA2("senha@123",256)),
("Roberto Machado", "machado@eamil.com", SHA2("senha@123",256));

select * from user;
