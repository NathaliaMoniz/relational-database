#! /bin/bash

echo "Welcome to My Salon, how can I help you?"
psql -U freecodecamp -d salon -c " SELECT service_id || ') ' || name as service_list FROM services;"

read SERVICE_ID_SELECTED

while true; do
    service_exists=$(psql -U freecodecamp -d salon -t -c "SELECT EXISTS (SELECT 1 FROM services WHERE service_id = $SERVICE_ID_SELECTED);")

    service_exists=$(echo $service_exists | xargs)

    if [ "$service_exists" == "t" ]; then
        psql -U freecodecamp -d salon -c "SELECT service_id || ') ' || name as service_list FROM services WHERE service_id = $SERVICE_ID_SELECTED;"
        break
    else
        psql -U freecodecamp -d salon -c " SELECT service_id || ') ' || name as service_list FROM services;"
        echo "I could not find that service. What would you like today?"
        read SERVICE_ID_SELECTED
    fi
done

echo "What's your phone number?"
read CUSTOMER_PHONE

customer_exists=$(psql -U freecodecamp -d salon -t -c "SELECT EXISTS (SELECT 1 FROM customers WHERE phone = '$CUSTOMER_PHONE')")
customer_exists=$(echo $customer_exists | xargs)

if [ "$customer_exists" == "t" ]; then
    :
else
    echo "I don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME
    psql -U freecodecamp -d salon -c "INSERT INTO customers(phone, name) values('$CUSTOMER_PHONE', '$CUSTOMER_NAME')"
fi

SERVICE=$(psql -U freecodecamp -d salon -t -c "SELECT name FROM services WHERE service_id = '$SERVICE_ID_SELECTED'" | xargs)

echo "What time would you like your $SERVICE, $CUSTOMER_NAME?"
read SERVICE_TIME

CUSTOMER_ID=$(psql -U freecodecamp -d salon -t -c "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'" | xargs)
psql -U freecodecamp -d salon -c "INSERT INTO appointments(customer_id, service_id, time) values('$CUSTOMER_ID', $SERVICE_ID_SELECTED, '$SERVICE_TIME')"

echo "I have put you down for a $SERVICE at $SERVICE_TIME, $CUSTOMER_NAME."



