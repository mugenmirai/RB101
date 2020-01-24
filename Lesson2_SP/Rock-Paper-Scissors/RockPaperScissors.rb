# frozen_string_literal: true

VALID_CHOICES = %w[rock paper scissors].freeze

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('computer won!')
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
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
  sleep 0.5
  print '. . . . .'
  sleep 1
  puts ' . . . . '
  sleep 0.7
  prompt "You chose: #{choice}"
  sleep 0.8
  puts ' . . . . '
  sleep 1
  prompt "Computer chose: #{computer_choice}"
  sleep 1
  print ' . . . . '
  sleep 0.4
  print '. . . . . '
  puts '. . . . . >'
  sleep 1

  display_results(choice, computer_choice)

  prompt 'Do you want to play again?'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt 'Thank you for playing, cheers!'
