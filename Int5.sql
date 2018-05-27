.mode columns
.headers on
.nullvalue NULL

select depid, funcionario.nome, temposervico
from funcionariodepartamento, funcionario, departamento
where funcionariodepartamento.funcid = funcionario.id and departamento.id = funcionariodepartamento.depid
group by depid
order by depid