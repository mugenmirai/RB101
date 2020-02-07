#typing out LS sample for mind practice
SUITS = %w( H D S C )
RANKS = %w(2 3 4 5 6 7 8 9 10 J Q K A)

def prompt(msg) #•••1
  puts "=> #{msg}"
end

def initialize_deck #•••2
  SUITS.product(RANKS).shuffle
end

#p initialize_deck#.map { |sub| sub.reverse }
#puts ''
#p initialize_deck.map { |sub| sub.reverse }

def total(cards) #•••3
  values = cards.map {|card| card[1] }

  sum = 0
  values.each do |value|
    if value == 'A'
      sum += 1
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end
  #now that we van everything sumed up added to SUM
  values.select {|value| value == 'A' }.count.times {sum -= 10 if sum > 21 }  #*
  #if there is one or more a in our cards input, we substract 10 if the sum is over 21, 
  #if the sum is over 21 and there are no A, then we leave sum as is
  sum
end

def busted?(cards) #•••4 #checking whether to see if its over 21 #•••4
  total(cards) > 21 #invokes the total method to return a boolean
end

def detect_result(dealer_cards, player_cards) #•••5
  player_total = total(player_cards)#(3)
  dealer_total = total(dealer_cards)#(3)

  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif dealer_total < player_total 
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_cards, player_cards) #•••6
  result = detect_result(dealer_cards, player_cards)
  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def play_again? #•••7
  puts "-------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

loop do
  system 'clear'
  prompt "Welcome to twenty one, im practicing!!"
  deck = initialize_deck   #shuffled #•2
  player_cards = []
  dealer_cards = []

  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  prompt "Dealer has #{dealer_cards[0]} and [?]"
  prompt "You have: #{player_cards[0]} and #{player_cards[1]}, for a total of #{total(player_cards)}."
  #player's turn
  loop do
    player_turn = nil #following loop reassigns player_turn  (trying to force get h or s strings)
    loop do
      prompt "would you like to (h)it or (s)tay?"
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      prompt "Sorry, must enter 'h' or 's'."
    end
    #player_turn var is now assigned either h or s
    if player_turn == 'h'
      player_cards << deck.pop  #remove destructively one card set from deck
      prompt "You chose to hit"
      prompt "Your cards are now: #{player_cards}"
      prompt "Your total is now: #{total(player_cards)}"
    end

    break if player_turn == 's' || busted?(player_cards)
  end
    if busted?(player_cards)
      display_result(dealer_cards, player_cards)
      play_again? ? next : break #if play again evals to true it will skip the rest of the code, & keep going, else we break out of this loop
    else
      prompt "You stayed at #{total(player_cards)}"
    end

    #dealers turn
    prompt "Dealer's turn..."
    loop do
      break if total(dealer_cards) >= 17

      prompt "Dealer hits!"
      dealer_cards << deck.pop
      prompt "Dealer's cards are now: #{dealer_cards}"
    end

    puts "#{'=' * 36}"
    prompt "Dealer has #{dealer_cards}, for a total of: #{total(dealer_cards)}"
    prompt "Player has #{player_cards}, for a total of: #{total(player_cards)}"
    puts "#{'-' * 36}"

    display_result(dealer_cards, player_cards)
    break unless play_again?
  end

  prompt "Thank you for playing.... Cheers!"