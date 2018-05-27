.mode columns
.headers on
.nullvalue NULL

select divID, avg(idade) as "Media de idade dos funcionarios"
from funcionario, funcionariodepartamento, departamentodivisao
where funcionario.id = funcionariodepartamento.funcId and funcionariodepartamento.depId = departamentodivisao.depId
group by departamentodivisao.divID;