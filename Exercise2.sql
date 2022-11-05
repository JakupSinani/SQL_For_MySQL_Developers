-- SELECT TEAMS.PLAYERNO, TEAMS.TEAMNO, PENALTIES.PAYMENTNO
-- FROM TEAMS LEFT OUTER JOIN PENALTIES
-- ON TEAMS.PLAYERNO = PENALTIES.PLAYERNO
-- WHERE DIVISION = 'second'

-- select * 
-- from penalties left outer join teams
-- 	using (playerno)

-- select matchno, difference
-- from (select matchno ,
-- 						abs (won - lost) as difference
-- 					from matches) as m
-- 			where difference > 2


-- select * from (
-- 	select 'stratford' as town, 4 as number
--     union
--     select 'plymouth', 6
--     union
--     select 'inglewood', 1
--     union 
--     select 'douglas', 2) as towns
-- order by town

-- select playerno, name, players.town, number * 100
-- from players,
-- 			(select  'Stratford' AS TOWN, 4 AS NUMBER
-- UNION
-- SELECT 'Plymouth', 6
-- UNION
-- SELECT 'Inglewood', 1
-- UNION
-- SELECT 'Douglas', 2) AS TOWNS
-- WHERE PLAYERS.TOWN = TOWNS.TOWN
-- ORDER BY PLAYERNO

SELECT PLAYERNO
FROM PLAYERS LEFT OUTER JOIN
(SELECT 'Stratford' AS TOWN, 4 AS NUMBER
UNION
SELECT 'Plymouth', 6
UNION
SELECT 'Inglewood', 1
UNION
SELECT 'Douglas', 2) AS TOWNS
ON PLAYERS.TOWN = TOWNS.TOWN
WHERE TOWNS.NUMBER > 2