.mode columns
.headers on
.nullvalue NULL

select divID,count(*) as "Numero de jogos lancados"
from JogoDivisao 
group by JogoDivisao.divID;