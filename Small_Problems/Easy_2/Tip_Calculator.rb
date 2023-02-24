# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

def prompt(message)
  print "==>#{message}"
end

prompt("What is the bill? ")
bill = gets.chomp.to_f

prompt("What is the tip percentage? ")
tip_percentage = gets.chomp.to_f
tip_decimal = tip_percentage / 100

tip = (bill * tip_decimal).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{total}"

