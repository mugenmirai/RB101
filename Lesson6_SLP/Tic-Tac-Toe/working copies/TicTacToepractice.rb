EMPTY_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 0
WIN_SCORE = (3..7).to_a.sample

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +  # horizontal
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +  # vertical
                [[1, 5, 9], [3, 5, 7]]               # diagonal

def prompt(msg)
  puts "=> #{msg}"
end

#rubocop:disable Metrics/AbcSize
def display_game(board)
  system 'clear'
  puts "You are a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ''
  puts '1    |2    |3'
  puts "  #{board[1]}  |  #{board[2]}  |  #{board[3]}"
  puts '     |     | '
  puts '-----+-----+-----'
  puts '4    |5    |6'
  puts "  #{board[4]}  |  #{board[5]}  |  #{board[6]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '7    |8    |9'
  puts "  #{board[7]}  |  #{board[8]}  |  #{board[9]}"
  puts '     |     |'
  puts ''
end

def joinor(array, delimiter=', ', last_delimiter = 'or')
  return array[0].to_s if array.size == 1
  return "#{array[0]} #{last_delimiter} #{array[1]}" if array.size == 2
  array.inject('') do |string, item|
    string << if array.last == item
                "#{last_delimiter} #{item}"
              elsif delimiter.size < 2
                "#{item}#{delimiter} "
              else
                "#{item}#{delimiter}"
              end
          end
    end

def initialize_board #•••
  (1..9).each_with_object({}) { |num, hsh| hsh[num] = EMPTY_MARKER }
end

def select_squares(board, marker) #•••
  board.keys.select { |num| board[num] == marker }
end

def player_places_piece!(board) #•••
  square = ''
  loop do
    prompt "Please choose an available square: #{joinor(select_squares(board, EMPTY_MARKER))}"
    square = gets.to_i
    break if select_squares(board, EMPTY_MARKER).include?(square) #check's whether square is empty
    prompt "Error, must choose from #{joinor(select_squares(board, EMPTY_MARKER))} try again...."
  end
  board[square] = PLAYER_MARKER #we are setting the current player's square to chosen square
end

def computer_places_piece!(board) #•••
  square =
     find_at_risk_square(board) ||
     select_squares(board, EMPTY_MARKER).find { |num| num == 5 } ||
     select_squares(board, EMPTY_MARKER).sample
  board[square] = COMPUTER_MARKER
end

def place_piece!(board, player) #•••
  if player == 'player'
    player_places_piece!(board)    #•••
  else
    computer_places_piece!(board)  #•••
  end
end

def possible_wins(board, marker) #•••
  WINNING_LINES.select do |each_set|
    values_marked = 0
    select_squares(board, marker).each { |square| values_marked += 1 if each_set.include?(square)}
    values_marked == 2 #returns false if values marked isn't exactly 2
  end
end

def find_at_risk_square(board) #•••
  squares_at_risk = select_squares(board, EMPTY_MARKER).select do |square|
    possible_wins(board, PLAYER_MARKER).any? { |each_set| each_set.include?(square) }
  end

  squares_to_win = select_squares(board, EMPTY_MARKER).select do |square|
    possible_wins(board, COMPUTER_MARKER).any? { |each_set| each_set.include?(square)}
  end

  return squares_to_win.first unless squares_to_win.empty?
  squares_at_risk.first
end

def board_full?(board) #•••
  select_squares(board, EMPTY_MARKER).empty?
end

def someone_won?(board)
  !!detect_winner(board)
end

def detect_winner(board)
  WINNING_LINES.each do |line|
        if board.values_at(*line).all?(PLAYER_MARKER)
          return 'player'
        elsif board.values_at(*line).all?(COMPUTER_MARKER)
          return 'computer'
        end
      end
   nil
end

def intro
    puts """
><><><><><><><><><><><><><><><><><><><
 ><><>< Let's play Tic-Tac-Toe ><><><
><><><><><><><><><><><><><><><><><><><
It really simple, Here are the rules:
You need to pick 3 squares in a row to win a round.
(can be straight, horizontal, or diagonal)
To win the game you must win #{WIN_SCORE} matches to win the entire game.
Careful though, this is the tough version of the game!
  """
end

def intro2
    puts """
><><><><><><><><><><><><><><><><><><><
  ><><>< This is Tic-Tac-Toe! ><><><
><><><><><><><><><><><><><><><><><><><
To win the game you must win #{WIN_SCORE} matches to win the entire game.
Careful though, this is the tough version of the game!
  """
end

def display_score(scr)
  "SCOREBOARD - PLAYER: #{scr['player']} || COMPUTER: #{scr['computer']} || TIES: #{scr['tie']}"
end

def update_score_board(score_board, result)
  result ? score_board[result] += 1 : score_board['tie'] += 1
end

def match_ended?(score_board)
  score_board['player'] == WIN_SCORE || score_board['computer'] == WIN_SCORE
end

def display_match_winner(score_board)
  if score_board['player'] == WIN_SCORE
    "You won #{WIN_SCORE} matches, YahoOoo You are the Champion!"
  elsif score_board['computer'] == WIN_SCORE
    "Too bad.... Computer has won #{WIN_SCORE} matches, You lost... better luck next time!"
  end
end

def alternate_player(player)
  player == 'player' ? 'computer' : 'player'
end

def choose_current_player
  choice = ''
  loop do
    print "
Would you like to go first? (yes/no)
=> Enter answer: "
    choice = gets.chomp.downcase
    break if choice.start_with?('y') || choice.start_with?('n')
    prompt "\"#{choice}\" is not accepted, must answer y or n, try again"
  end
  choice.start_with?('y') ? 'player' : 'computer'
end

def display_game_result(result)
  puts result == 'player' || result == 'computer' ? "=> #{result} is the winner!" : "=> Every..Booodyyyy Winssss... NOT, it's tie!"
end

loop do 
  score_board = { 'player' => 0, 'computer' => 0, 'tie' => 0 }
  current_round = 1
  loop do
    board = initialize_board
    current_player = 'none'
    loop do
      display_game(board)
      current_round == 1 ? intro : intro2
      prompt "CURRENT ROUND: #{current_round}"
      prompt display_score(score_board)
      current_player = choose_current_player if current_player == 'none'
      place_piece!(board, current_player)
      print "#{current_player} choice processing #{'.' * rand(15)}"
      sleep 0.7
      print "#{'.' * rand(15)}"
      sleep 0.5
      puts "#{'.' * rand(15)}"
      sleep 0.3
      current_player = alternate_player(current_player)
      if someone_won?(board) || board_full?(board)
        current_player = alternate_player(current_player) if board_full?(board)
        current_round += 1
        break
      else
        next
      end
    end

      display_game(board)
      game_result = detect_winner(board)
      update_score_board(score_board, game_result)
      display_game_result(game_result)
      print "#{'.' * rand(15)}"
      sleep 0.3
      puts "#{'.' * rand(15)}"
      sleep 0.3
      sleep 1
      next unless match_ended?(score_board)
      prompt(display_match_winner(score_board))
      display_score(board)
      break
    end

    prompt 'To play again enter: y, else type in anything to exit'
    answer = gets.chomp.downcase
    break unless answer.start_with?('y')
  end

  prompt "Thank you for playing Tic-Tac-Toe, Cheers!"


