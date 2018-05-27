.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

.print ''
select * from Departamento;
.print ''
INSERT INTO Funcionario (id, nome, idade, tempoServico, moradaID) VALUES (100, 'Test func', 25, 12, NULL);
.print ''
INSERT INTO FuncionarioDepartamento (funcID, depID) VALUES (100, 1);
.print ''
select * from Departamento;