#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
echo "Enter your username:"
read user_name

number=$((1 + $RANDOM % 10))
user_exists=$($PSQL "SELECT exists (SELECT 1 FROM users WHERE username = '$user_name' LIMIT 1);")

if [ "$user_exists" == "t" ]; then
  games_played=$($PSQL "SELECT games_played FROM users WHERE username = '$user_name';")
  best_game=$($PSQL "SELECT best_game FROM users WHERE username = '$user_name';")
  echo "Welcome back, $user_name! You have played $games_played games, and your best game took $best_game guesses."
  $PSQL "UPDATE users SET games_played = games_played + 1 WHERE username = '$user_name';" > /dev/null 2>&1
else
  echo "Welcome, $user_name! It looks like this is your first time here."
  $PSQL "INSERT INTO users(username, games_played) VALUES('$user_name', 1);" > /dev/null 2>&1
fi
echo "Guess the secret number between 1 and 1000:"
read guess

number_of_guesses=1
while true; do
  if [[ "$guess" =~ ^-?[0-9]+$ ]]; then
    if [ "$guess" -gt "$number" ]; then
      echo "It's lower than that, guess again:"
      number_of_guesses=$((number_of_guesses + 1))
      read guess
    elif [ "$guess" -lt "$number" ]; then
      echo "It's higher than that, guess again:"
      number_of_guesses=$((number_of_guesses + 1))
      read guess
    else
      echo "You guessed it in $number_of_guesses tries. The secret number was $number. Nice job!"
      best_game=$($PSQL "SELECT best_game FROM users WHERE username = '$user_name';")
      if [ -z "$best_game" ]; then
        $PSQL "UPDATE users SET best_game = $number_of_guesses WHERE username = '$user_name';" > /dev/null 2>&1
      elif [ "$number_of_guesses" -lt "$best_game" ]; then
        $PSQL "UPDATE users SET best_game = $number_of_guesses WHERE username = '$user_name';" > /dev/null 2>&1
      fi
      break
    fi
  else
    echo "That is not an integer, guess again:"
    read guess   
  fi 
done