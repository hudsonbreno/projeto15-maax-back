-- Active: 1686015002710@@dpg-chv5qu33cv230onjma3g-a.oregon-postgres.render.com@5432@maax@public
CREATE TABLE categoria(
    "id" SERIAL PRIMARY KEY ,
    "categoria" VARCHAR(255)
);

CREATE TABLE produto(  
    "id" SERIAL PRIMARY KEY ,
    "url_img" TEXT,
    "categoria_id" INT REFERENCES categoria(id),
    "descricao" TEXT NOT NULL,
    "valor" FLOAT NOT NULL
);

CREATE TABLE itenscomprados(
    "id" SERIAL PRIMARY KEY,
    "produto_id" INT NOT NULL REFERENCES produto(id),
    "quantidade" INT NOT NULL,
    "valor" FLOAT NOT NULL,
    "valor_total" FLOAT NOT NULL,
    "dia_compra" TIMESTAMP,
    "fornecedor" VARCHAR
);

CREATE TABLE itensvendidos(
    "id" SERIAL PRIMARY KEY ,
    "produto_id" INT NOT NULL REFERENCES produto(id),
    "quantidade" INT NOT NULL,
    "dia_venda" TIMESTAMP,
    "valor_total" FLOAT NOT NULL,
    "contato_venda" TEXT
);