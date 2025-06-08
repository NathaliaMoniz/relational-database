if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

$PSQL "TRUNCATE TABLE games, teams;"
$PSQL "CREATE TABLE temp_worldcup (
    year INT,
    round VARCHAR(255),
    winner VARCHAR(255),
    opponent VARCHAR(255),
    winner_goals INT,
    opponent_goals INT
);"

$PSQL "\copy temp_worldcup FROM './games.csv' DELIMITER ',' CSV HEADER;"

$PSQL "ALTER TABLE temp_worldcup ADD COLUMN winner_id INT, ADD COLUMN opponent_id INT"

$PSQL "INSERT INTO teams (name)
       SELECT DISTINCT winner FROM temp_worldcup
       UNION
       SELECT DISTINCT opponent FROM temp_worldcup;"

$PSQL "UPDATE temp_worldcup
      SET
          winner_id = (SELECT team_id FROM teams WHERE name = temp_worldcup.winner LIMIT 1),
          opponent_id = (SELECT team_id FROM teams WHERE name = temp_worldcup.opponent LIMIT 1);"

$PSQL "INSERT INTO games (year, round, winner_id, opponent_id, winner_goals, opponent_goals)
       SELECT year, round, winner_id, opponent_id, winner_goals, opponent_goals FROM temp_worldcup;"

$PSQL "DROP TABLE temp_worldcup;"
