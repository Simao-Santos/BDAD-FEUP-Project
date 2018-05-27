.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

.print ''
select * from Funcionario;
.print ''
INSERT INTO Funcionario (id, nome, idade, tempoServico, moradaID) VALUES (100, 'Test func', 16 , 12, NULL);
.print ''
select * from Funcionario;