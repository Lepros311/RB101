# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

def prompt(message)
  print "==>#{message}"
end

def compute_sum(num)
  total = 0
  1.upto(num) { |value| total += value }
  total
end

def compute_product(num)
  total = 1
  1.upto(num) { |value| total *= value }
  total
end

prompt("Please enter an integer greater than 0: ")
number = gets.chomp.to_i

prompt("Enter 's' to compute the sum, 'p' to computer the product. ")
command = gets.chomp

if command == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
else
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
end