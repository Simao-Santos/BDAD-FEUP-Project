.mode columns
.headers on
.nullvalue NULL

drop view if exists temp;
drop view if exists temp2;

create view temp as
select Jogador.id as jogadorid ,Plataforma.nome,Plataforma.id
from Jogador, JogoJogador, JogoPlataforma,Plataforma
where Jogador.id = JogoJogador.jogadorID and JogoJogador.jogoID = JogoPlataforma.jogoID and premium = 'true' and JogoPlataforma.platID = Plataforma.id;

create view temp2 as 
select nome, count(distinct jogadorid) as numero 
from temp
group by id;



select nome,max(numero) as "Numero de jogadores premium"
from temp2;