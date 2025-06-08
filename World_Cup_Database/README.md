# FreeCodeCamp Database Challenge: World Cup Tournament Data

## Description

This repository contains the code and data structure for a project based on the FreeCodeCamp database challenge. The project involves creating and managing a database system that stores and queries data related to the final three rounds of the World Cup tournament since 2014. The goal is to implement a relational database to store information about the teams, games, and scores, and to automate the data insertion and querying process using SQL and Bash scripting.

## Database Design

The database consists of two main tables to store and manage data relevant to the World Cup games: **teams** and **games**.

### Tables:

1. **Teams**: Contains information about the teams participating in the World Cup.
   - **team_id**: Primary Key, automatically increments as a `SERIAL` type.
   - **name**: The name of the team, must be unique.

2. **Games**: Contains information about each game in the tournament.
   - **game_id**: Primary Key, automatically increments as a `SERIAL` type.
   - **year**: The year the game was played.
   - **round**: The round of the game (e.g., "Final", "Semi-Final").
   - **winner_id**: Foreign Key, references the `team_id` column from the `teams` table.
   - **opponent_id**: Foreign Key, references the `team_id` column from the `teams` table.
   - **winner_goals**: The number of goals scored by the winning team.
   - **opponent_goals**: The number of goals scored by the opponent team.

Each table is linked through **Foreign Keys** to establish relationships between games and the teams.

## Purpose

This project serves as a challenge to implement a simple yet efficient database structure for the World Cup tournament. The purpose is to practice and demonstrate skills related to:

- **Database design and normalization**: Creating structured tables with the correct relationships and constraints.
- **SQL queries**: Inserting, updating, and querying data to retrieve information about teams, games, and scores.
- **Bash scripting**: Automating the process of inserting data from a CSV file and performing queries through the command line.

## Technologies Used

- **PostgreSQL**: The relational database management system (RDBMS) used for creating and managing the database.
- **SQL**: Structured Query Language for creating tables, inserting data, and querying the database.
- **Bash**: Shell scripting used to automate the insertion of data and perform queries through the command line.

