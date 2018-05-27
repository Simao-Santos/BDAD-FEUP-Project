.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

Create trigger if not exists R1
after insert on FuncionarioDepartamento
begin
	update Departamento
    set tamanhoEquipa = tamanhoEquipa + 1
    where Departamento.id = New.depID;
End;