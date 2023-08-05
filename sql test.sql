create database soccer_db;
use soccer_db;
# 1. From the following table, write a SQL query to count the number of countries that par􀆟cipated in the 2016-euro cup
select count(distinct team_id)
from player_mast;
# 2. From the following table, write a SQL query to find the number of matches that ended with a result
-- use table match_mast
select count(*)
from match_mast
where results='win';
# 3 From the following table, write a SQL query to find out when the Football EURO cup 2016 will begin 
select play_date "beginning date"
from match_mast
where match_no=1;
#4 From the following table, write a SQL query to find out where the final match of the EURO cup 2016 wsa played
select venue_name, city
from soccer_venue a



# 5. From the following tables, write a SQL query to find the number of goals scored by each team in each match during normal play
select  match_no,country_name,goal_score
FROM match_details a
JOIN soccer_country b


# 6. From the following table, write a SQL query to count the number of goals scored by each player
within a normal play schedule.-- Group the result set on player name and country name and sorts the result-set according to the
highest to the lowest scorer
SELECT player_name,count(*),country_name
FROM goal_details a
JOIN player_mast b ON a.player_id=b.player_id
JOIN soccer_country c ON a.team_id=c.country_id
WHERE goal_schedule = 'NT'
GROUP BY player_name,country_name
ORDER BY count(*) DESC;

# 7. From the following table, write a SQL query to find out who scored the most goals in the 2016 euro cup



# 8. From the following table, write a SQL query to find out which teams played the first match of the 2016 Euro Cup.
sELECT match_no,country_name
FROM match_details a, soccer_country b
WHERE a.team_id=b.country_id
AND a.match_no=1;

# 9. From the following table, write a SQL query to find the highest audience match.
SELECT match_no, play_stage, goal_score, audence 
FROM match_mast 
WHERE audence=(
SELECT max(audence) 
FROM match_mast);

# 10. Write a SQL query to find the players who scored goals in each match.




