-- Tabela Utilizadores
CREATE TABLE Utilizadores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_registo TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela Produtos
CREATE TABLE Produtos (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL CHECK (preco >= 0),
    stock INT NOT NULL DEFAULT 0 CHECK (stock >= 0)
);
