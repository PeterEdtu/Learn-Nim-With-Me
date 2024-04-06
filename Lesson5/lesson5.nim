import strutils

let
    a = "test is is a "
    b = "test"

echo a.split()
echo a.toUpperAscii() 
echo b.repeat(5)

import math                 

let
    c = 30.0 # degrees
    cRadians = c.degToRad()   

echo cRadians
echo sin(cRadians).round(2) 

echo 2^5

from firstFile import plus
echo plus(5, 10)

#from  test/testFolderModule import procedureGreeting
#procedureGreeting("John")
# Problems when trying to import from subfolder TODO: Fix

echo "---------------"

# Read files
let contents = readFile("people.txt").strip()
echo contents

let people = contents.splitLines()    
echo people

echo "---------------"

# User input
echo "Please enter your name:"
let name = readLine(stdin)
echo "Please enter your year of birth:"
let age = readLine(stdin).parseInt()  

echo "Hello ", name, ", nice to meet you!"
echo "You will be ", 2024 - age, " years old this year."

echo "---------------"

import sequtils

let
  strNums = readFile("numbers.txt").strip().splitLines()  
  nums = strNums.map(parseFloat)       

let
  sumNums = sum(nums)                  
  average = sumNums / float(nums.len)  

echo sumNums
echo average

# Exercises
echo "--------------------------------"
echo "Exercises start here!"

echo "\n3. Reverse string:"
proc reverse_string(text:string): string =
    for i in countdown(text.len-1, 0):
        result.add(text[i])

echo reverse_string("Test")

echo "Provide a text to be reversed:"
echo reverse_string(readLine(stdin))
