CREATE DATABASE bd_mamuka;

USE bd_mamuka;


CREATE TABLE tb_usuario(
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
cpf INT(11) NOT NULL UNIQUE,
dataNascimento DATE,
stautsAtividade BOOL,
departamento VARCHAR(255) NOT NULL,
responsavel VARCHAR(255) NOT NULL,
perfil VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
id_tipoUsuario BINARY(16) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_tipoUsuario) REFERENCES tb_usuario (id)
);

CREATE TABLE tb_tipoUsuario (
	id BINARY(16) NOT NULL,
	tipoUsuario VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_projeto (
id BINARY(16) NOT NULL,
nomeProjeto VARCHAR(255) NOT NULL,
statusProjeto VARCHAR(255) NOT NULL,
dataInicio DATETIME,
dataConclusao DATETIME,
id_gestor BINARY(16),
PRIMARY KEY (id),
FOREIGN KEY (id_gestor) REFERENCES tb_projeto (id)
);

CREATE TABLE tb_tarefa (
id BINARY(16) NOT NULL,
nomeTarefa VARCHAR(255) NOT NULL,
statusTarefa VARCHAR(255) NOT NULL,
dataInicio DATETIME,
dataConclusao DATETIME,
id_dev BINARY(16),
id_projeto BINARY(16) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_dev) REFERENCES tb_tarefa (id),
FOREIGN KEY (id_projeto) REFERENCES tb_projeto (id)
);