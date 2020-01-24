USERNAME = 'Batman'
username = 'Robyn'
def authenticate
  puts "Logging in #{USERNAME}"
end

authenticate

3.times { puts "I love #{username}!"}

loop do 
  MY_TEAM = "Royals"
  break
end

puts MY_TEAM
puts ''


def greetings
  puts "Goodbye"
end

word = "Hello"

#block not executed
greetings do 
  puts word 
end
#method is not defined to use the block in any way, so its not executed.

#yield!!!

def greets
  yield
  puts "Goodbye"
  yield if true
end

greets {puts username}
puts ''

def change_name(input); names = input; end
names = 'jim'
p change_name('pooch')
puts names
p names 