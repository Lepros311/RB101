# Write a method that will take a short line of text, and print it within a box.

def print_dashes(box_length)
  box_length.times { print "-" }
end

def print_spaces(box_length)
  box_length.times { print " " }
end

def print_in_box(str)
  box_length = str.size + 2
  print "+"
  print_dashes(box_length)
  print "+\n"
  print "|"
  print_spaces(box_length)
  puts "|"
  puts "| " + str + " |"
  print "|" 
  print_spaces(box_length)
  puts "|"     
  print "+"         
  print_dashes(box_length)
  print "+\n"
end

print_in_box("Hi, how are you?")
print_in_box("I'm great. Thanks for asking.")

# LS Solution:
def print_in_box(message)
  horizontal_rule = "+#{'-' * (message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end