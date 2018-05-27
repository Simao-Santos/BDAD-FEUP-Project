.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

Create trigger if not exists InsereFuncionario
before insert on Funcionario
when New.idade < 18 
begin
	select raise(rollback,"O funcionario devera ser maior de idade");

End;