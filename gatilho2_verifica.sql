.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

.print ''
select * from Playerbase;
.print ''
INSERT INTO Jogador (id, username, idade, tester, premium) VALUES (100, 'testuser', 12, 'false', 'false');
.print ''
INSERT INTO JogadorPlayerbase (jogadorID, playerbaseID) VALUES (100, 2);
.print ''
select * from Playerbase;