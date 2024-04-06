const x = 5
const y = 15

var a: array[x, int] # Pre-defined sized array
var b: array[y, int]

echo a, " ", b

var seq1 = @[9, 6] # Dynamic array like list in Python

seq1.add(0)
seq1.add(3)
seq1.add(-5)

echo seq1

var last_value = seq1[^1]
echo last_value

echo seq1[0 ..< 3] # Slicing

# Tuple can contain multiple types and you can name them
let tuple_values = (name: "Banana", weight:2, rating:'c') 
echo "name: ", tuple_values.name
echo "weight: ", tuple_values.weight
echo "rating: ", tuple_values.rating

# Exercises
echo "--------------------------------"
echo "Exercises start here!"

echo "\n1. Arrays:"
var array1: array[10, int]
for i in 0 .. array1.len-1:
    var new_value = (i+1) * 10
    if i mod 2 != 0:
        echo new_value
    else:
        new_value = new_value * 5
        array1[i] =  new_value

echo array1

echo "\n2. Collatz conjecture 2:" # I'm making this one way to complex that it should-
var seq_conj = @[77]
var iterations = 0

while iterations < seq_conj.len:
    var seq_element = seq_conj[iterations]
    if seq_element mod 2 == 0: # even
        seq_element = int(seq_element / 2)
    else: # odd
        seq_element = seq_element * 3 + 1
    
    if seq_element != 1:
        seq_conj.add(seq_element)
    inc iterations

echo "While loop finished with: ", seq_conj.len, " iterations"
echo seq_conj

echo "\n3. Collatz conjecture 3:"
var result = (longestLength: 0, startingNumber:0)
for i in 2 .. 100:
    var seq_conj = @[i]
    var iterations = 0

    while iterations < seq_conj.len:
        var seq_element = seq_conj[iterations]
        if seq_element mod 2 == 0: # even
            seq_element = int(seq_element / 2)
        else: # odd
            seq_element = seq_element * 3 + 1
        
        if seq_element != 1:
            seq_conj.add(seq_element)
        inc iterations
    
    if result.longestLength < seq_conj.len:
        result = (longestLength: iterations, startingNumber:i)

echo "Calculte max sequence: While loop finished! Result: ", result
