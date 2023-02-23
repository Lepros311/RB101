# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

def center_of(str)
  if str.size.odd?
    str[str.size / 2]
  else
    str[str.size / 2 - 1, 2]
  end
end

p center_of("I love ruby")
p center_of("Launch School")
p center_of("Launch")
p center_of("Launchschool")
p center_of("x")