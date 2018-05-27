.mode columns
.headers on
.nullvalue NULL

select nome,idadeMedia from Jogo,Playerbase
where Jogo.playerbaseID = Playerbase.id and idadeMedia <= 13;