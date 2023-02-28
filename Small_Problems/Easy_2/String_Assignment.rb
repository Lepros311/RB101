# name = 'Bob'
# save_name = name
# name.upcase!
# puts name, save_name

# What does this print out? Can you explain these results?

# BOB
# Bob

# The first puts is all caps because .upcase! is called on it. The second is not all caps because name was not upcased yet when it was assigned to save_name

# WRONG, DUMBASS.

# Pass by Reference vs Pass by Value: https://launchschool.com/lessons/8a39abff/assignments/20041df9

# Because assignment in ruby just assigns a reference to a variable, both name and save_name refer to the same string, Bob. When you apply name.upcase!, which mutates name in place, the value that save_name references also changes. Thus, both name and save_name are set equal to 'BOB'.