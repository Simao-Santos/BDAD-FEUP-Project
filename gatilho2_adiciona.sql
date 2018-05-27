.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;



Create trigger if not exists R2
after insert on JogadorPlayerbase
begin
	update Playerbase
    set idadeMedia = (select avg(Jogador.idade) from JogadorPlayerbase,Jogador
					  where Jogador.id = jogadorID and playerbaseID = New.playerbaseID)
    where Playerbase.id = New.playerbaseID;
End;