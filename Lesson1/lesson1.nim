# Exercises Lesson 1

const my_age = 25
echo my_age * 365, " days"

if my_age mod 3 == 0:
    echo "My age is divisible by 3"

const my_height = 180
echo my_height * 2.54, " inches"

const
    first_name = "John"
    last_name = "Doe"

var full_name = first_name & " " & last_name
echo "My fullname is ", full_name

const
    alice_paycheck_day = 400 / 15
    bob_paycheck_day = 3.14 * 8

if alice_paycheck_day * 30 > bob_paycheck_day * 30:
    echo "Alice gains more than Bob! ", alice_paycheck_day * 30, " > ", bob_paycheck_day * 30
else:
    echo "Bob gains more than Alice! ", alice_paycheck_day * 30, " < ", bob_paycheck_day * 30

