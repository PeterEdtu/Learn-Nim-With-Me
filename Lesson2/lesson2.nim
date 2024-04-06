# Just some examples for each new item

const list1 = [1, 5, 6, 3, 7]

for i in list1:
    echo i

echo "--------"

for i in 0 .. 10:
    echo i

const simple_text = "Hello,World!"

for i, k in simple_text:
    echo "Letter no: ", i, " is: ", k

var count_number = 0

while count_number < 9:
    echo "Count: ", count_number

    if count_number == 7:
        echo "Let's take a -break-"
        break

    inc count_number

echo "While loop is done! ", count_number

# Exercises
echo "--------------------------------"
echo "Exercises start here!"

echo "\n1. Collatz conjecture:"
var number_variable = 77
var iterations = 0

while number_variable != 1:
    if number_variable mod 2 == 0: # even
        number_variable = int(number_variable / 2)
    else: # odd
        number_variable = number_variable * 3 + 1
    inc iterations

echo "While loop finished with: ", iterations, " iterations"

echo "\n2. Vowels print"
const full_name = "John Doe"

for character in full_name:
    case character
        of 'a':
            echo character
        of 'e':
            echo character
        of 'i':
            echo character
        of 'o':
            echo character
        of 'u':
            echo character
        else:
            continue

echo "\n3. Fizz buzz"
const rounds_number = 30

for i in 1 .. rounds_number:
    if i mod 15 == 0:
        echo "fizzbuzz"
    elif i mod 3 == 0:
        echo "fizz"
    elif i mod 5 == 0:
        echo "buzz"
    else:
        echo i

