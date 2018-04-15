
PRAGMA foreign_keys = ON;
BEGIN TRANSACTION;

-- Table: Departamento

INSERT INTO Departamento (id, nome, tamanhoEquipa) VALUES (1, 'Developers', 10);
INSERT INTO Departamento (id, nome, tamanhoEquipa) VALUES (2, 'Financeiro', 5);
INSERT INTO Departamento (id, nome, tamanhoEquipa) VALUES (3, 'Marketing', 5);

-- Table: DepartamentoDivisao

INSERT INTO DepartamentoDivisao (depID, divID) VALUES (1, 2);
INSERT INTO DepartamentoDivisao (depID, divID) VALUES (2, 1);
INSERT INTO DepartamentoDivisao (depID, divID) VALUES (3, 1);

-- Table: Divisao

INSERT INTO Divisao (id, nome, moradaID) VALUES (1, 'ASM Sports', 123);
INSERT INTO Divisao (id, nome, moradaID) VALUES (2, 'ASM USA', 2);

-- Table: Funcionario

INSERT INTO Funcionario (id, nome, idade, tempoServico) VALUES (1, 'Antero Pinto', 34, 23);
INSERT INTO Funcionario (id, nome, idade, tempoServico) VALUES (2, 'Rui Pereira', 24, 4);
INSERT INTO Funcionario (id, nome, idade, tempoServico) VALUES (3, 'Joao Batista', 22, 6);
INSERT INTO Funcionario (id, nome, idade, tempoServico) VALUES (4, 'Henrique Ramires', 44, 15);
INSERT INTO Funcionario (id, nome, idade, tempoServico) VALUES (5, 'Rui Cunha', 34, 4);
INSERT INTO Funcionario (id, nome, idade, tempoServico) VALUES (6, 'Nelson Santos', 20, 20);
INSERT INTO Funcionario (id, nome, idade, tempoServico) VALUES (7, 'Carlos Silva', 25, 12);

-- Table: FuncionarioDepartamento

INSERT INTO FuncionarioDepartamento (funcID, depID) VALUES (1, 1);
INSERT INTO FuncionarioDepartamento (funcID, depID) VALUES (2, 2);
INSERT INTO FuncionarioDepartamento (funcID, depID) VALUES (3, 3);
INSERT INTO FuncionarioDepartamento (funcID, depID) VALUES (4, 2);
INSERT INTO FuncionarioDepartamento (funcID, depID) VALUES (5, 1);
INSERT INTO FuncionarioDepartamento (funcID, depID) VALUES (6, 2);
INSERT INTO FuncionarioDepartamento (funcID, depID) VALUES (7, 1);

-- Table: Genero

INSERT INTO Genero (id, nome, idadeRecomendada) VALUES (1, 'Desporto', 3);
INSERT INTO Genero (id, nome, idadeRecomendada) VALUES (2, 'Acção', 12);
INSERT INTO Genero (id, nome, idadeRecomendada) VALUES (3, 'Musica', 10);

-- Table: Jogador

INSERT INTO Jogador (id, username, idade, tester, premium) VALUES (1, 'gamerGood', 12, 'false', 'true');
INSERT INTO Jogador (id, username, idade, tester, premium) VALUES (2, 'edgyDab', 14, 'true', 'true');
INSERT INTO Jogador (id, username, idade, tester, premium) VALUES (13, 'TheGuitarGuy', 20, 'false', 'false');

-- Table: JogadorPlayerbase

INSERT INTO JogadorPlayerbase (jogadorID, playerbaseID) VALUES (2, 2);
INSERT INTO JogadorPlayerbase (jogadorID, playerbaseID) VALUES (1, 1);
INSERT INTO JogadorPlayerbase (jogadorID, playerbaseID) VALUES (13, 3);
INSERT INTO JogadorPlayerbase (jogadorID, playerbaseID) VALUES (13, 4);
INSERT INTO JogadorPlayerbase (jogadorID, playerbaseID) VALUES (13, 1);

-- Table: Jogo

INSERT INTO Jogo (id, nome, playerbaseID) VALUES (1, 'Fifax18', 1);
INSERT INTO Jogo (id, nome, playerbaseID) VALUES (2, 'RaceTop', 4);
INSERT INTO Jogo (id, nome, playerbaseID) VALUES (3, 'nbax18', 2);
INSERT INTO Jogo (id, nome, playerbaseID) VALUES (5, 'GuitarVillain', 3);

-- Table: JogoDivisao

INSERT INTO JogoDivisao (jogoID, divID) VALUES (1, 1);
INSERT INTO JogoDivisao (jogoID, divID) VALUES (2, 1);
INSERT INTO JogoDivisao (jogoID, divID) VALUES (3, 1);
INSERT INTO JogoDivisao (jogoID, divID) VALUES (5, 2);

-- Table: JogoGenero

INSERT INTO JogoGenero (jogoID, generoID) VALUES (1, 1);
INSERT INTO JogoGenero (jogoID, generoID) VALUES (2, 1);
INSERT INTO JogoGenero (jogoID, generoID) VALUES (3, 2);
INSERT INTO JogoGenero (jogoID, generoID) VALUES (5, 3);

-- Table: JogoJogador

INSERT INTO JogoJogador (jogoID, jogadorID) VALUES (2, 1);
INSERT INTO JogoJogador (jogoID, jogadorID) VALUES (2, 2);
INSERT INTO JogoJogador (jogoID, jogadorID) VALUES (1, 1);
INSERT INTO JogoJogador (jogoID, jogadorID) VALUES (5, 2);
INSERT INTO JogoJogador (jogoID, jogadorID) VALUES (5, 1);
INSERT INTO JogoJogador (jogoID, jogadorID) VALUES (5, 13);
INSERT INTO JogoJogador (jogoID, jogadorID) VALUES (1, 13);
INSERT INTO JogoJogador (jogoID, jogadorID) VALUES (2, 13);

-- Table: JogoPlataforma

INSERT INTO JogoPlataforma (jogoID, platID) VALUES (1, 2);
INSERT INTO JogoPlataforma (jogoID, platID) VALUES (1, 1);
INSERT INTO JogoPlataforma (jogoID, platID) VALUES (3, 1);
INSERT INTO JogoPlataforma (jogoID, platID) VALUES (2, 2);
INSERT INTO JogoPlataforma (jogoID, platID) VALUES (2, 1);
INSERT INTO JogoPlataforma (jogoID, platID) VALUES (5, 2);
INSERT INTO JogoPlataforma (jogoID, platID) VALUES (5, 1);

-- Table: Morada

INSERT INTO Morada (id, nomeRua, cidade, numeroPorta, pais) VALUES (2, 'Hollywood Boulevard', 'Los Angeles', 37, 'USA');
INSERT INTO Morada (id, nomeRua, cidade, numeroPorta, pais) VALUES (123, 'Rua Principal', 'Porto', 20, 'Portugal');

-- Table: Plataforma

INSERT INTO Plataforma (id, nome, marca) VALUES (1, 'XboK', 'Microsofter');
INSERT INTO Plataforma (id, nome, marca) VALUES (2, 'PlayStationer', 'Sonky');

-- Table: Playerbase

INSERT INTO Playerbase (id, numeroTotal, idadeMedia) VALUES (1, 20, 13);
INSERT INTO Playerbase (id, numeroTotal, idadeMedia) VALUES (2, 15, 18);
INSERT INTO Playerbase (id, numeroTotal, idadeMedia) VALUES (3, 300, 25);
INSERT INTO Playerbase (id, numeroTotal, idadeMedia) VALUES (4, 34, 10);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
