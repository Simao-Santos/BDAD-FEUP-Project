.mode columns
.headers on
.nullvalue NULL

drop view if exists jogadores;

create view jogadores as
select Jogador.id as jogadorid ,Plataforma.nome,Plataforma.id
from Jogador, JogoJogador, JogoPlataforma,Plataforma
where Jogador.idade <= 12 and Jogador.id = JogoJogador.jogadorID and JogoJogador.jogoID = JogoPlataforma.jogoID and premium = 'true' and JogoPlataforma.platID = Plataforma.id;


select nome, count(distinct jogadorid) as "Numero de jogadores premium com idade <= 12"
from jogadores
group by id;



