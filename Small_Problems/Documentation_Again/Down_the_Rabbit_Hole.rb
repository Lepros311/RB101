# Sometimes, the documentation is going to leave you scratching your head.

# In a very early assignment at Launch School, you are tasked with writing a program that loads some text messages from a YAML file. We do this with YAML::load_file:

#   require 'yaml'
#   MESSAGES = YAML.load_file('calculator_messages.yml')

#   Find the documentation for YAML::load_file.


# Solution

# https://docs.ruby-lang.org/en/2.7.0/YAML.html
# Discussion

# If you go to the YAML documentation (it's part of the Standard Library API), you will find a page that is almost completely devoid of useful information. There's not a single method described, and only 3 ridiculously trivial examples. There is no Parent class defined, there are no Included Modules, and the YAML-related links on the left-side are of no help.

# The only really useful item on this page is the 3rd paragraph:

#     The YAML module is an alias of Psych, the YAML engine for Ruby.

# The key here is the reference to Psych. If you go back to the Standard Library API page and click on psych, you see a long list of Psych-related classes. Unfortunately, that long list makes a quest for a method named ::load_file somewhat daunting.

# Fortunately, this page also lists all of the methods in the different classes, and up near the top of this list is ::load_file, which is part of the Psych module. Sure enough, there's the documentation for what we were looking for.

# In fact, the entire Psych class is about methods that will be useful when working with YAML files.
