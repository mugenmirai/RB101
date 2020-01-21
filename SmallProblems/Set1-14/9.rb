#Down the rabbit hole

require 'yaml' # <- we are importing the yaml library to our program
MESSAGES = YAML.load_file('calculator_messages.yml') # Assigning value to a constant


# https://docs.ruby-lang.org/en/2.6.0/Psych.html#method-c-load_file