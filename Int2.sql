.mode columns
.headers on
.nullvalue NULL

select Jogodivisao.divID, Genero.nome as "Genero mais produzido"
from Jogodivisao, Genero, Jogo
where Jogo.generoID = Genero.id
group by divID
order by max(genero.nome);