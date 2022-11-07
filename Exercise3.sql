-- find the player number for each player who has inccured at least
-- two penalties of more than $25; order the result by player number (smallest number first)
-- select PLAYERNO
-- FROM PENALTIES
-- WHERE AMOUNT > 25
-- GROUP BY PLAYERNO
-- HAVING COUNT(*) > 1
-- ORDER BY PLAYERNO

-- Find the players for whom the following two conditions are both
-- true or both false: The player number is less than 15, and the year of joining the
-- club is greater than 1979
-- select playerno, joined
-- from players
-- where playerno < 15 and joined > 1979
-- or
-- select playerno, joined, playerno < 15, joined > 1979
-- from players
-- where (playerno < 15) = (joined > 1979)

-- show which players are resident in inglewood
-- select name, initials
-- from players
-- where town = 'inglewood'

-- get the player number and the league number of each player resident
-- in stratford; order the result by league number
-- select playerno, leagueno, name
-- from players
-- where town = 'stratford'
-- order by leagueno

-- get the number of the players who are captain and the number of the players who incurred a penalty
-- select playerno
-- from players
-- union 
-- select playerno
-- from penalties

-- get the number of the players with a number less than 10 and who are male
-- select name, initials, playerno,sex
-- from players
-- where playerno < 10 and sex = 'm'

-- or

-- select playerno
-- from ( select playerno, sex
-- 	from players
--     where playerno < 10) as players10
-- where sex = 'm'

-- for each player whose number is less than 60, get the number of 
-- years between the year in which that player joined the club and that of player 100.
-- select playerno, joined -
-- 					(select joined
--                     from players
--                     where playerno = 100)
-- from players
-- where playerno < 60

-- get the number of the players who were born in the same year as
-- player 27
-- select playerno
-- from players
-- where year(birth_date)=(select year(birth_date)
-- 						from players
--                         where playerno = 27)

-- get the date of birth of players 27, 44, and 100 as one row
-- select 
-- 	(select birth_date
--     from players
--     where playerno = 27),
--     (select birth_date
--     from players
--     where playerno = 44),
--     (select birth_date
--     from players
--     where playerno = 100)

-- get the number of the players who have the same sex as and 
-- live in the same town as player 100
-- select playerno
-- from players
-- where (sex,town) = (select sex,town
-- 					from players
--                     where playerno = 100)

-- find the number of penalties and the highest penalty amount
-- select count(*),max(amount),min(amount)
-- from penalties
-- where amount > max(amount)

select count(distinct town)
from players