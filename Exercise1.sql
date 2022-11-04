-- exercise 5.5
-- get the match number and the difference between sets won and sets lost for each match
-- of which the number of sets won equals the number of sets lost plus 2
-- select matchno, won-lost
-- from matches
-- where won=lost+2

-- example 5.6
-- for each team, get the number and the division
-- select teamno, division
-- from teams

-- example 5.7
-- for each team, get the number and the division, and use the full names
-- select teamno as team_number, division as division_of_team

-- example 5.8
-- for each penalty, get the payment number and the penalty amount in cents
-- select paymentno, amount * 100 as cents
-- from penalties
-- order by amount

-- example 5.9
-- get some data from the matches table
-- SELECT MATCHNO AS PRIMKEY,
-- 80 AS EIGHTY,
-- WON - LOST AS DIFFERENCE,
-- TIME('23:59:59') AS ALMOST_MIDNIGHT,
-- 'TEXT' AS TEXT
-- FROM MATCHES
-- WHERE MATCHNO <= 4

-- example 5.10
-- group all the penalties on penalty amount in cents, and order the result on that number of cents
-- select AMOUNT * 100 as amount_in_cents
-- from penalties
-- group by amount
-- order by amount_in_cents

-- exercise 5.4
-- for each match, get the match number and the difference between the number of sets won and the number of sets lost,
-- and name this column DIFFERENCE
-- select matchno, won - lost as difference
-- from matches

-- example 5.12
-- get the last name,the town, and the postcode of all player with a number less
-- than the value of the playerno user variable that has just been created
-- select name, town, POSTCODE
-- from players
-- where @playerno >playerno

-- example 5.13
-- find the value of playerno variable
-- select @playerno

-- example 5.19
-- show the penalties that were paid today
-- select * from penalties
-- where payment_date=current_date()

-- example 5.20
-- get the player number, the sex,
-- and the name of each player who joined the club after 1980.
-- the sex must be printed as female or male
-- select playerno, case sex
-- 					when 'f' then 'female'
--                     else 'male' end as sex,
-- 				name
--  from players
-- where joined > 1980

-- example 5.22
-- for each player, find the player number, the year in which he or she joined the club,
-- and the players age group
-- select playerno, joined,
-- 	case
-- 		when joined <1980 then 'seniors'
--         when joined <1983 then 'juniors'
--         else 'children' end as age_group
-- from players
-- order by joined

-- example 5.28
-- for all players with numbers less than 10, get the player number,
-- the name of the day and month on which they were born, 
-- and the days sequence number within the year of the birth date
-- select playerno,dayname(birth_date),monthname(birth_date),dayofyear(birth_date), dayofweek(birth_date)
-- from players
-- where playerno < 10

-- example 5.29
-- for the players who were born on a saturday, get the number,
-- the date of birth, and the date that comes seven days after that date of birth
-- select playerno, birth_date,
-- 		adddate(birth_date, interval 7 day)
-- from players
-- where dayname(birth_date)='saturday'

-- exercise 5.17
-- get the numbers of the penalties that were paid on a monday
-- select playerno
--  from penalties
--  where dayname(payment_date)='monday'

-- exercise
-- get the name and  numbers of the penalties that were paid on a monday
-- select playerno, p.name
-- from penalties
-- join players p
-- 	using(playerno)
-- where dayname(payment_date)='monday'

-- exercise
-- get the numbers of the penalties that were paid in 1984
-- select playerno
-- from penalties
-- where payment_date between '1984-01-01' and '1984-12-30'

-- example 5.31
-- get the payment numebers of the penalties that are higher than $50
-- select paymentno
-- from penalties
-- where amount > 50

-- example 5.32
-- for each player resident in inglewood, get the name and the date of birth 
-- as one alphanumeric value
select name,BIRTH_DATE 
from players
where town ='inglewood'
