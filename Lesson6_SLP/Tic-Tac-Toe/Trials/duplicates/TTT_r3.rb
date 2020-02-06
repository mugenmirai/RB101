require 'pry'

EMPTY_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]] # diagonals

def prompt(msg)
  puts "=>#{msg}"
end

def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ''
  puts '     |     |     '
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts '     |     |     '
  puts '-----+-----+-----'
  puts '     |     |     '
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts '     |     |     '
  puts '-----+-----+-----'
  puts '     |     |     '
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts '     |     |     '
  puts ''
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = EMPTY_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == EMPTY_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do 
    prompt "Choose a square #{empty_squares(brd).join(', ')}."
    square = gets.to_i
    break if empty_squares(brd).include?(square)
    prompt "Invalid choice, try agian"
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

loop do 
  new_current_board = initialize_board
  loop do 
    display_board(new_current_board)
    player_places_piece!(new_current_board)
    break if someone_won?(new_current_board) || board_full?(new_current_board)
    computer_places_piece!(new_current_board)
    break if someone_won?(new_current_board) || board_full?(new_current_board)
  end

  display_board(new_current_board)

  if someone_won?(new_current_board)
    prompt "#{detect_winner(new_current_board)} won!"
  else
    prompt "It's a tie!"
  end

  prompt "Want to play again? (y or n)"
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

prompt "Thank you for playing tic-tac-toe 2020!"