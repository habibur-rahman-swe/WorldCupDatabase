#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE games, teams;")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != 'year' && $ROUND != 'round' && $WINNER != 'winner' && $OPPONENT != 'opponent' && $WINNER_GOALS != 'winner_goals' && $OPPONENT_GOALS != 'opponent_goals' ]]
  then
  # inserting for winner
    # get team_id from the teams table for winner
    WINNER_ID=$($PSQL "SELECT team_id from teams WHERE name='$WINNER';")
    # if team_id not found
    if [[ -z $WINNER_ID ]]
      then
        INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER');")
        echo "Inserted into teams, $WINNER"
    fi

  # inserting for opponent
    # get team_id from the teams table for winner
      OPPONENT_ID=$($PSQL "SELECT team_id from teams WHERE name='$OPPONENT';")
      # if team_id not found
      if [[ -z $OPPONENT_ID ]]
        then
          INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');")
          echo "Inserted into teams, $OPPONENT"
      fi

  # inserting winner and opponent to the games
    WINNER_ID=$($PSQL "SELECT team_id from teams WHERE name='$WINNER';")
    OPPONENT_ID=$($PSQL "SELECT team_id from teams WHERE name='$OPPONENT';")

    # inserting into games
    INSERT_GAME=$($PSQL "INSERT INTO games(year, round, opponent_goals, winner_goals, winner_id, opponent_id) values($YEAR, '$ROUND', $OPPONENT_GOALS, $WINNER_GOALS, $WINNER_ID, $OPPONENT_ID);")
  
  fi
done