#write a method called joinor

=begin 

input: array of different objects as elements
output string of integers only, with last integer 'or'
[1, 2, 3, 4, 5, 6, 7, 8, 9] ->  'Choose a position to place a piece: 1, 2, 3, 4, 5, 6, 7, 8, or 9'


=end


#array = 

#INITIAL_MARKER = ' '#

#def empty_squares(brd)
#  # binding.pry
#  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
#  # binding.pry
#end#
#

#def initialize_board
#  new_board = {}
#  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
#  new_board
#end#
#

#board = initialize_board
#p board#

#p empty_squares(board)

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 'test', 'really?']

#puts "Choose a square (#{array.join(', ')}):"

test1 = array.each_with_object('') do |nums, string|
           if nums.to_i.integer? && nums.to_i != 0 && nums != array.last
            string << "#{nums}, "
          elsif nums.to_i.integer? && nums.to_i != 0 && nums == array.last
            string << "or #{nums}"
          end
end

p test1 