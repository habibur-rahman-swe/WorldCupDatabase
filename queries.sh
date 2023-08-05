#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=worldcup --no-align --tuples-only -c"

# Do not change code above this line. Use the PSQL variable above to query your database.

echo -e "\nTotal number of goals in all games from winning teams:"
echo "$($PSQL "SELECT SUM(winner_goals) FROM games")"

echo -e "\nTotal number of goals in all games from both teams combined:"
echo "$($PSQL "SELECT SUM(winner_goals + opponent_goals) from games;")"

echo -e "\nAverage number of goals in all games from the winning teams:"
echo "$($PSQL "select avg(winner_goals) from games;")"

echo -e "\nAverage number of goals in all games from the winning teams rounded to two decimal places:"
echo "$($PSQL "select round(avg(winner_goals), 2) from games;")"

echo -e "\nAverage number of goals in all games from both teams:"
echo "$($PSQL "select avg(winner_goals + opponent_goals) from games;")"

echo -e "\nMost goals scored in a single game by one team:"
echo  "$($PSQL "select max(winner_goals) from games;")"

echo -e "\nNumber of games where the winning team scored more than two goals:"
echo  "$($PSQL "select count(*) from games where winner_goals > 2;")"

echo -e "\nWinner of the 2018 tournament team name:"
echo  "$($PSQL "select t.name from teams as t left join games as g on t.team_id=g.winner_id where g.year=2018 and g.round='Final';")"

echo -e "\nList of teams who played in the 2014 'Eighth-Final' round:"
echo  "$($PSQL "select t.name from games as g full join teams as t on g.winner_id=t.team_id OR g.opponent_id=t.team_id WHERE (g.year='2014' AND g.round='Eighth-Final') ORDER BY t.name;")"

echo -e "\nList of unique winning team names in the whole data set:"
echo  "$($PSQL "SELECT DISTINCT(t.name) FROM games as g LEFT JOIN teams as t ON g.winner_id=t.team_id ORDER BY t.name;")"

echo -e "\nYear and team name of all the champions:"
echo  "$($PSQL "SELECT g.year, t.name FROM games as g LEFT JOIN teams as t ON g.winner_id=t.team_id WHERE g.round='Final' ORDER BY g.year;")"

echo -e "\nList of teams that start with 'Co':"
echo  "$($PSQL "SELECT name FROM teams WHERE name LIKE 'Co%';")"
