Create database ScriptJurassico;
Use ScriptJurassico;


CREATE TABLE clientes (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) DEFAULT NULL,
    rg VARCHAR(12) DEFAULT NULL,
    cpf VARCHAR(15) DEFAULT NULL,
    createdAt VARCHAR(50) DEFAULT NULL,
    updatedAt VARCHAR(50) DEFAULT NULL
);

-- eventos
CREATE TABLE Evento (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(500) NOT NULL,
    dataEvento DATE NOT NULL,
    tipo INT NOT NULL,
    quantPessoas INT NOT NULL,
    quantPessoasConfirm INT NOT NULL,
    valorEntrada DOUBLE NOT NULL
);

INSERT INTO Evento (descricao, dataEvento, tipo, quantPessoas, quantPessoasConfirm, valorEntrada) VALUES ('apresentaçao top pro navao', '2023-06-16', 1, 3, 3, 8.5);

-- funcionarios 
CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    rg VARCHAR(12) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    nivelUsuario INT NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    bairro VARCHAR(255) NOT NULL,
    cidade VARCHAR(255) NOT NULL,
    cep VARCHAR(9) NOT NULL,
    telefone VARCHAR(17) NOT NULL
);

INSERT INTO funcionarios (nome, cargo, rg, cpf, nivelUsuario, endereco, bairro, cidade, cep, telefone) VALUES ('DEVssauro', 'desenvolvedor triste', '22.222.222-2', '444.444.444-4', 1, 'fatecmm', 'jardim patricia', 'Mogi Mirim', '13801-005', '19 3804-5387');

-- cria o usuario
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin@123';

-- da as permissões ao usuario
GRANT INSERT, SELECT, DROP, CREATE ON ScriptJurassico.* TO 'admin'@'localhost';

-- atualiza as permissões
FLUSH PRIVILEGES;

-- caso de cagada
DROP USER 'admin'@'localhost';
SELECT User, Host FROM mysql.User;

drop database ScriptJurassico


