# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

SQMETERS_TO_SQFEET = 10.7639 
SQFEET_TO_SQMETERS = 0.092903
SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCENTIMETERS = 929.03

# We use a constant, SQMETERS_TO_SQFEET to store the conversion factor between square meters and square feet. This is good practice any time you have a number whose meaning is not immediately obvious upon seeing it.

# https://codereview.stackexchange.com/questions/28054/separate-numbers-with-commas
def separate_comma(number)
  whole, decimal = number.to_s.split(".")
  whole_with_commas = whole.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
  [whole_with_commas, decimal].compact.join(".")
end

def prompt(message)
 print "==>#{message}"
end

prompt("What's your name? ")
name = gets.chomp
puts "Hi, #{name}! Let's find out how big your room is!"

loop do
  prompt("Do you want to enter the room dimensions in meters or feet? ")
  meters_or_feet = gets.chomp

  if meters_or_feet == "meters"
    prompt("Enter the length of the room in meters: ")
    length_in_meters = gets.chomp.to_f
    prompt("Enter the width of the room in meters: ")
    width_in_meters = gets.chomp.to_f

    area_in_meters = (length_in_meters * width_in_meters).round(2)
    area_in_feet = (area_in_meters * SQMETERS_TO_SQFEET).round(2)
    area_in_centimeters = (area_in_feet * SQFEET_TO_SQCENTIMETERS).round(2)
    area_in_inches = (area_in_feet * SQFEET_TO_SQINCHES).round(2)

    puts "The area of the room is: "
    puts "#{area_in_meters} square meters"
    puts "#{area_in_feet} square feet"
    puts "#{separate_comma(area_in_centimeters)} square centimeters"
    puts "#{separate_comma(area_in_inches)} square inches"
  else
    prompt("Enter the length of the room in feet: ")
    length_in_feet = gets.chomp.to_f
    prompt("Enter the width of the room in feet: ")
    width_in_feet = gets.chomp.to_f

    area_in_feet = (length_in_feet * width_in_feet).round(2)
    area_in_meters = (area_in_feet * SQFEET_TO_SQMETERS).round(2)
    area_in_centimeters = (area_in_feet * SQFEET_TO_SQCENTIMETERS).round(2)
    area_in_inches = (area_in_feet * SQFEET_TO_SQINCHES).round(2)

    puts "The area of the room is: "
    puts "#{area_in_feet} square feet"
    puts "#{area_in_meters} square meters"
    puts "#{separate_comma(area_in_centimeters)} square centimeters"
    puts "#{separate_comma(area_in_inches)} square inches"
  end
  prompt("Do you want to do another conversion (y/n): ")
  answer = gets.chomp
  if answer == "n"
    puts "Goodbye, #{name}!"
    break
  end
end