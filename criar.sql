
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Departamento
DROP TABLE IF EXISTS Departamento;

CREATE TABLE Departamento (
    id            INTEGER PRIMARY KEY,
    nome          TEXT    NOT NULL,
    tamanhoEquipa INTEGER NOT NULL
                          CHECK (tamanhoEquipa > 0) 
);


-- Table: DepartamentoDivisao
DROP TABLE IF EXISTS DepartamentoDivisao;

CREATE TABLE DepartamentoDivisao (
    depID INTEGER PRIMARY KEY
                  REFERENCES Departamento (id),
    divID INTEGER REFERENCES Divisao (id) 
);


-- Table: Divisao
DROP TABLE IF EXISTS Divisao;

CREATE TABLE Divisao (
    id       INTEGER PRIMARY KEY,
    nome     TEXT    NOT NULL,
    moradaID INTEGER REFERENCES Morada (id) 
);


-- Table: Funcionario
DROP TABLE IF EXISTS Funcionario;

CREATE TABLE Funcionario (
    id           INTEGER PRIMARY KEY,
    nome         TEXT    NOT NULL,
    idade        INTEGER CHECK (idade >= 18) 
                         NOT NULL,
    tempoServico INTEGER NOT NULL
                         CHECK (tempoServico >= 0) 
);


-- Table: FuncionarioDepartamento
DROP TABLE IF EXISTS FuncionarioDepartamento;

CREATE TABLE FuncionarioDepartamento (
    funcID INTEGER PRIMARY KEY
                   REFERENCES Funcionario (id),
    depID  INTEGER REFERENCES Departamento (id) 
);


-- Table: Genero
DROP TABLE IF EXISTS Genero;

CREATE TABLE Genero (
    id               INTEGER PRIMARY KEY,
    nome             TEXT    NOT NULL
                             UNIQUE,
    idadeRecomendada INTEGER NOT NULL
);


-- Table: Jogador
DROP TABLE IF EXISTS Jogador;

CREATE TABLE Jogador (
    id       INTEGER PRIMARY KEY,
    username TEXT    NOT NULL
                     UNIQUE,
    idade    INTEGER NOT NULL,
    tester   BOOLEAN NOT NULL,
    premium  BOOLEAN NOT NULL
);


-- Table: JogadorPlayerbase
DROP TABLE IF EXISTS JogadorPlayerbase;

CREATE TABLE JogadorPlayerbase (
    jogadorID    INTEGER REFERENCES Jogador (id),
    playerbaseID INTEGER REFERENCES Playerbase (id),
    PRIMARY KEY (
        jogadorID,
        playerbaseID
    )
);


-- Table: Jogo
DROP TABLE IF EXISTS Jogo;

CREATE TABLE Jogo (
    id           INTEGER PRIMARY KEY,
    nome         TEXT    NOT NULL
                         UNIQUE,
    playerbaseID INTEGER REFERENCES Playerbase (id) 
                         NOT NULL
);


-- Table: JogoDivisao
DROP TABLE IF EXISTS JogoDivisao;

CREATE TABLE JogoDivisao (
    jogoID INTEGER PRIMARY KEY
                   REFERENCES Jogo (id),
    divID  INTEGER REFERENCES Divisao (id) 
);


-- Table: JogoGenero
DROP TABLE IF EXISTS JogoGenero;

CREATE TABLE JogoGenero (
    jogoID   INTEGER PRIMARY KEY
                     REFERENCES Jogo (id),
    generoID INTEGER REFERENCES Genero (id) 
);


-- Table: JogoJogador
DROP TABLE IF EXISTS JogoJogador;

CREATE TABLE JogoJogador (
    jogoID    INTEGER REFERENCES Jogo (id),
    jogadorID INTEGER REFERENCES Jogador (id),
    PRIMARY KEY (
        jogoID,
        jogadorID
    )
);


-- Table: JogoPlataforma
DROP TABLE IF EXISTS JogoPlataforma;

CREATE TABLE JogoPlataforma (
    jogoID INTEGER REFERENCES Jogo (id),
    platID INTEGER REFERENCES Plataforma (id),
    PRIMARY KEY (
        jogoID,
        platID
    )
);


-- Table: Morada
DROP TABLE IF EXISTS Morada;

CREATE TABLE Morada (
    id          INTEGER PRIMARY KEY,
    nomeRua     TEXT    NOT NULL,
    cidade      TEXT    NOT NULL,
    numeroPorta INTEGER NOT NULL,
    pais        TEXT    NOT NULL
);


-- Table: Plataforma
DROP TABLE IF EXISTS Plataforma;

CREATE TABLE Plataforma (
    id    INTEGER PRIMARY KEY,
    nome  TEXT    NOT NULL,
    marca TEXT    NOT NULL
);


-- Table: Playerbase
DROP TABLE IF EXISTS Playerbase;

CREATE TABLE Playerbase (
    id          INTEGER PRIMARY KEY,
    numeroTotal INTEGER NOT NULL
                        CHECK (numeroTotal > 0),
    idadeMedia  INTEGER NOT NULL
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
