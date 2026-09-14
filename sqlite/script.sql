-- Definindo  tabela "person"

---------------------------------
--Apaga a tabela caso já exista
---------------------------------
DROP  TABLE IF EXISTS content;
DROP  TABLE IF EXISTS person;
--------------------
--Criar a tabela
--------------------
CREATE TABLE person(
	per_id INTEGER PRIMARY KEY,
	per_name TEXT,
	per_email TEXT,
	per_birth TEXT,
	per_photo TEXT


);

CREATE TABLE content(
	cnt_id INTEGER PRIMARY KEY,
	cnt_title TEXT,
	cnt_text TEXT,
	cnt_person_id INTEGER,
	
	FOREIGN KEY (cnt_person_id) REFERENCES person(per_id)
	
);

---------------------------------
-- Inserir dados na tabela person
---------------------------------
INSERT INTO person (
	per_name,
	per_email,
	per_birth,
	per_photo
) VALUES (
	"Joca da Silva",
	"jocasilva@gmail.com",
	"2000-07-15",
	"https://randomuser.me/api/portraits/women/92.jpg"

);
-------------------------
-- Verificando inserções
---------------------------
SELECT * FROM person;
---------------------------
--Cadastrando varios person
--------------------------
INSERT INTO person (
	per_name, per_email, per_birth, per_photo

)	VALUES 
("Mariana Oliveira", "mari@gmail.com", "2002-11-11","https://randomuser.me/api/portraits/women/4.jpg"),
("Pedro de Lara", "pedro@gmail.com", "1945-12-28", "https://randomuser.me/api/portraits/men/49.jpg"),
("Carlos Almeida", "Almeida@gmail.com", "2003-07-17", "https://randomuser.me/api/portraits/men/5.jpg");
--------------------------
-- Insere dados na tabela
--------------------------
INSERT INTO content (
	cnt_title,
	cnt_text,
	cnt_person_id

) VALUES (
	"Como fazer pipoca",
	"Coloque o óleo na panela depois coloque o milho de pipoca",
	"4"
);

--Lista os "content" cadastrado
SELECT * FROM content;

--Ordem alfabetica
SELECT * FROM person ORDER BY per_name ASC;

--Limitando os resultados
SELECT * FROM person LIMIT 2; --Pega os 2 registros
SELECT * FROM person LIMIT 2, 2; -- Apartir do 3° registro, registro 2 registros

--Usando os 2 filtros
SELECT * FROM person ORDER BY per_name ASC LIMIT 2;