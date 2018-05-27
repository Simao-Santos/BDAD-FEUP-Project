
.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;


Create trigger if not exists R3
after insert on JogadorPlayerbase
begin
	update Playerbase
    set numeroTotal = numeroTotal + 1
    where Playerbase.id = New.playerbaseID;
End;