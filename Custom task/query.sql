SELECT * FROM Users ORDER BY Nickname;
SELECT DISTINCT Name FROM Champions;
SELECT UserId, Total, Wins, Losses FROM RankedMatchesStats ORDER BY Win_percent DESC;
SELECT * FROM RankedChampionStats WHERE ChampionsId = 13;
SELECT Users.Nickname, Champions.Name, RankedChampionStats.Killspergame, RankedChampionStats.Deathspergame, RankedChampionStats.Assistspergame, rankedchampionstats.Wins, rankedchampionstats.Losses
FROM Users JOIN RankedChampionStats ON Users.id = RankedChampionStats.UserId
JOIN Champions ON RankedChampionStats.ChampionsId = Champions.id
WHERE champions.Name = "Corki";
