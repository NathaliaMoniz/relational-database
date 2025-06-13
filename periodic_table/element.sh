# Store the input argument
input=$1

# Check if the input is empty
if [ -z "$input" ]; then
  echo -e "Please provide an element as an argument."
else
  # Check if the input is a number (atomic number)
  if [[ "$input" =~ ^[0-9]+$ ]]; then
    # Query the element name from the database based on atomic number
    name=$(psql -U freecodecamp -d periodic_table -t -c "SELECT name FROM elements WHERE atomic_number='$input'" | xargs)
    
    # If no name is found, print an error
    if [ -z "$name" ]; then
      echo -e "I could not find that element in the database."
    else
      # Query other details of the element (type, symbol, mass, melting point, boiling point) based on atomic number
      type_id=$(psql -U freecodecamp -d periodic_table -t -c "SELECT type_id FROM properties WHERE atomic_number='$input'" | xargs)
      symbol=$(psql -U freecodecamp -d periodic_table -t -c "SELECT symbol FROM elements WHERE atomic_number='$input'" | xargs)
      type=$(psql -U freecodecamp -d periodic_table -t -c "SELECT type FROM types WHERE type_id='$type_id'" | xargs)
      mass=$(psql -U freecodecamp -d periodic_table -t -c "SELECT atomic_mass FROM properties WHERE atomic_number='$input'" | xargs)
      melting=$(psql -U freecodecamp -d periodic_table -t -c "SELECT melting_point_celsius FROM properties WHERE atomic_number='$input'" | xargs)
      boiling=$(psql -U freecodecamp -d periodic_table -t -c "SELECT boiling_point_celsius FROM properties WHERE atomic_number='$input'" | xargs)
      
      # Display the information for the element
      echo -e "The element with atomic number $input is $name ($symbol). It's a $type, with a mass of $mass amu. $name has a melting point of $melting celsius and a boiling point of $boiling celsius."
    fi
  else
    # If the input is not a number, try to find the atomic number using the symbol or name
    atomic_number=$(psql -U freecodecamp -d periodic_table -t -c "SELECT atomic_number FROM elements WHERE symbol='$input' or name= '$input'" | xargs)
    
    # If no atomic number is found, print an error
    if [ -z "$atomic_number" ]; then
      echo -e "I could not find that element in the database."
    else
      # Query other details of the element (type, symbol, mass, melting point, boiling point) based on atomic number
      type_id=$(psql -U freecodecamp -d periodic_table -t -c "SELECT type_id FROM properties WHERE atomic_number='$atomic_number'" | xargs)
      name=$(psql -U freecodecamp -d periodic_table -t -c "SELECT name FROM elements WHERE atomic_number='$atomic_number'" | xargs)
      symbol=$(psql -U freecodecamp -d periodic_table -t -c "SELECT symbol FROM elements WHERE atomic_number='$atomic_number'" | xargs)
      type=$(psql -U freecodecamp -d periodic_table -t -c "SELECT type FROM types WHERE type_id='$type_id'" | xargs)
      mass=$(psql -U freecodecamp -d periodic_table -t -c "SELECT atomic_mass FROM properties WHERE atomic_number='$atomic_number'" | xargs)
      melting=$(psql -U freecodecamp -d periodic_table -t -c "SELECT melting_point_celsius FROM properties WHERE atomic_number='$atomic_number'" | xargs)
      boiling=$(psql -U freecodecamp -d periodic_table -t -c "SELECT boiling_point_celsius FROM properties WHERE atomic_number='$atomic_number'" | xargs)
      
      # Display the information for the element
      echo -e "The element with atomic number $atomic_number is $name ($symbol). It's a $type, with a mass of $mass amu. $name has a melting point of $melting celsius and a boiling point of $boiling celsius."
    fi
  fi
fi