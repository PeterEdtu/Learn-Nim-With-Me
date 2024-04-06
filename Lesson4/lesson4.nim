# This one is about procedures!! (functions)
proc findMax(x:int, y:int): int =
    if x > y:
        return x
    else:
        return y

proc oneLiner(x:int): int = return x

echo findMax(4, 6)
echo oneLiner(20)

proc echoLanguageRating(language: string) = 
    case language
    of "Nim", "nim", "NIM":
        echo language, " is the best language!"
    of "Python", "python", "PYTHON":
        echo language, " IS REALLY GOOOOOOOOOOOD"
    else:
        echo language, " might be a second-best language."

echoLanguageRating("python")
echoLanguageRating("java")
echoLanguageRating("nim")

echo "------------------"

# Change variable argument
proc changeArgument(argument: var int) = 
    inc argument

var new_var = 4
echo new_var
changeArgument(new_var)
echo new_var
changeArgument(new_var)
echo new_var
changeArgument(new_var)
echo new_var

let
    a = findMax(987, 789)
    b = findMax(123, 321)
    c = findMax(a, b)

echo a, " ", b, " ", c

echo "------------------"
# You can use Uniform Function Call Syntax which for me is REALLY cool
#   It works with any procedure you define
#   It is like "emulating" methods called from class instances; if it makes sense?

# Simple example:
var my_value = 5
echo my_value.findMax(500) # so sick!!

proc findBiggest(elements_seq: seq[int]): int =
    for element in elements_seq:
        if element > result:
            result = element

let d = @[3, -5, 11, 33, 7, -15]
echo d.findBiggest()

# Exercises
echo "--------------------------------"
echo "Exercises start here!"

echo "\n1. Greetings:"
proc greet(name: string) =
    echo "Hello ", name

var names_list = @["John", "Peter", "James"]
for name in names_list:
    name.greet()

echo "\n2. findMax3:"
proc findMax3(x:int, y:int, z:int): int =
    result = findMax(findMax(x, y), z)

echo findMax3(66, 5, 3)
echo findMax3(44, 105, 2)

echo "\n3. Points in 2D plane:"
proc addPoint(first_point: var tuple, second_point: var tuple) =
    first_point = (x: first_point.x + second_point.x, y: first_point.y + second_point.y)

var
    A_point = (x: 45, y: 88)
    B_point = (x: -2, y: 46)

echo "A: ", A_point, " B: ", B_point

A_point.addPoint(B_point)

echo "New point: ", A_point

echo "\n4. Tick Tock:"
var number_of_iterations = -1
const max_iterations = 20

proc tock()
proc tick()

proc tick() =
    inc number_of_iterations
    if number_of_iterations >= max_iterations:
        return
    echo "tick"
    tock()

proc tock() =
    inc number_of_iterations
    if number_of_iterations >= max_iterations:
        return
    echo "tock"
    tick()

tick()
echo "Number of ticks tocks: ", number_of_iterations
