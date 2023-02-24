# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

def prompt(message)
  print "==>#{message}"
end

numbers = []

prompt("Enter the 1st number: ")
number1 = gets.chomp.to_i
numbers << number1

prompt("Enter the 2nd number: ")
number2 = gets.chomp.to_i
numbers << number2

prompt("Enter the 3rd number: ")
number3 = gets.chomp.to_i
numbers << number3

prompt("Enter the 4th number: ")
number4 = gets.chomp.to_i
numbers << number4

prompt("Enter the 5th number: ")
number5 = gets.chomp.to_i
numbers << number5

prompt("Enter the 6th number: ")
number6 = gets.chomp.to_i

if numbers.include?(number6)
  puts "The number #{number6} appears in #{numbers}."
else 
  puts "The number #{number6} does not appear in #{numbers}."
end