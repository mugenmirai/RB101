VALID_CHOICES = %w[rock paper scissors]

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') || (first == 'paper' && second == 'rock') || (first == 'scissors' && second == 'paper')
  #(first.start_with?('r') && second.start_with?('s')) || (first.start_with?('p') && second.start_with?('r')) || (first.start_with?('s') && second.start_with?('p'))
end

def display_results(player, computer)
  if win?(player, computer)
    ('You Won!')
  elsif win?(computer, player)
    ('Computer won!')
  else
    ("It's a tie!")
  end
end

def update_score_board(player, computer, brd)
  win?(player, computer) ? brd['user'] += 1 : win?(computer, player) ? brd['computer'] += 1 : brd['tie'] += 1
end

def display_score(brd)
  if brd['tie'] == 0
  "USER: #{brd['user']} || COMPUTER: #{brd['computer']}"
else
  "USER: #{brd['user']} || COMPUTER: #{brd['computer']} || TIES: #{brd['tie']}"
end
end

def game_header
puts "============================
This is Rock-Paper-Scissors!
============================"
end


def animation
  print "#{'.' * rand(3..15)}"
  sleep (rand((0.1)..(0.9)).round(1))
  print "#{'.' * rand(3..15)}"
  sleep (rand((0.1)..(0.9)).round(1))
  print "#{'.' * rand(3..15)}"
  sleep (rand((0.1)..(0.9)).round(1))
  puts "#{'.' * rand(3..15)}"
  sleep (rand((0.1)..(0.9)).round(1))
end

loop do 
score_board = {'user'=> 0, 'computer'=> 0, 'tie'=>0}
loop do
  choice = ''
  system 'clear'
  results = ''
  game_header
  prompt"#{display_score(score_board)}"
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    choice = gets.chomp.downcase

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt "That's not a valid choice."
    end
  end
  computer_choice = VALID_CHOICES.sample
  prompt "You chose: #{choice}"
  animation
  prompt "Computer chose: #{computer_choice}"
  animation
  system 'clear'
  game_header

  results = display_results(choice, computer_choice)
  update_score_board(choice, computer_choice, score_board)
  prompt"#{display_score(score_board)}"
  prompt(results)
  prompt 'Do you want to play again?'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
break
end

prompt 'Thank you for playing Rock-Paper-Scissors!, cheers!'
