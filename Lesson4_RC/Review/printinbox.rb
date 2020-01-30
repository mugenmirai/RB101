#string = "hello"

def print_in_box(string)
padding = '-' * string.size
space = ' ' * string.size
puts """
+-#{padding}-+
| #{space} |
| #{string} |
| #{space} |
+-#{padding}-+
"""
end

print_in_box('To boldly go where no one has gone before.')
puts ''

print_in_box('in a glittering dream')
puts ''
print_in_box("キラキラ")