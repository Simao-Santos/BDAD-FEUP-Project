.mode columns
.headers on
.nullvalue NULL

select count(*) as "Numero de jogadores que jogam jogos com idade recomendada superior a sua idade" 
from Jogador,JogoJogador,Jogo,Genero
where Jogador.id = JogoJogador.jogadorID and Jogo.id = JogoJogador.jogoID and Jogo.generoID = Genero.id and Jogador.idade < Genero.idadeRecomendada;

