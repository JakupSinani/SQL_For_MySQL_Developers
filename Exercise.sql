-- example 4.7
-- get the number, name and date of birth of each player resident in stratford;
-- sort the result in alphabetical order of name (note that stratford staarts with a capital letter)
-- SELECT PLAYERNO, NAME, BIRTH_DATE
-- FROM PLAYERS
-- WHERE TOWN = 'Stratford'
-- ORDER BY NAME

-- example 4.8
-- get the number of each player who joined the club after 1980 and is resident in stratford;
-- order the result by player number
-- select *
-- from players
-- where joined >'1980'
-- and town = 'stratford'
-- order by playerno

-- example 4.9
-- get all the information about each penalty
-- select * 
-- from penalties
-- example 4.10
-- how much is 33 times 121
-- select 33 *121

-- example 4.11
-- change the amount of each penalty incurred by player 44 to $200
-- update penalties
-- set amount = 200
-- where playerno = 44

-- example 4.12
-- remove each penalty with an amount greater than $100
-- delete 
-- from penalties
-- where amount > 100

-- create index penalties_amount on penalties (amount)
select @@version