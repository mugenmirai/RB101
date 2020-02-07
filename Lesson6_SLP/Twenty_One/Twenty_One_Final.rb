def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  suits = %w[Hearts Diamonds Clubs Spades]
  ranks = (1..13)
  deck = suits.each_with_object([]) { |suit, deck| ranks.each { |rank| deck << [rank, suit] } }
end

def shuffle_cards!(deck)
  shuffled_cards = []
  until deck.empty?
    random_index = rand(deck.size)
    shuffled_cards << deck.delete_at(random_index)
  end
  shuffled_cards
end

def card_values(cards, card)
  case card
  when 11..13
    10
  when 1
    non_ace = cards.reject { |crd| crd[0] == 1 }
    non_ace_total = calculate_total(non_ace)
    non_ace_total + 11 > 21 ? 1 : non_ace_total + 11 == 21 ? 11 : 1 # check if we need parentheses
  else
    card
  end
end

def check_cards(cards)
  current_hand = cards.map { |card| card_label(card) }.join(', ')
  total = calculate_total(cards)
  "#{current_hand} || Current Total: #{total} ||"
end

def calculate_total(hand)
  hand.inject(0) { |sum, card| card_values(hand, card[0]) + sum }
end

def card_label(card)
  card_labels = { 1 => 'Ace', 11 => 'Jack', 12 => 'Queen', 13 => 'King' }
  card_suit_labels = { 'Hearts' => '♥', 'Diamonds' => '♦', 'Clubs' => '♣', 'Spades' => '♠' }
  card_index, card_suit = card
  label = card_labels[card_index] || card_index
  icon = card_suit_labels[card_suit]
  "#{icon} #{label} of #{card_suit}"
end

def deal!(cards, amount)
  cards.length >= amount ? cards.shift(amount) : "That's it! We are our of cards! Game over!"
end

def show_hand(cards)
  total = calculate_total(cards)
  "#{total} with #{check_cards(cards)}"
end

def play(deck)
  player_hand = deal!(deck, 2)
  dealer_hand = deal!(deck, 2)
  prompt "Player currently has: #{check_cards(player_hand)}"
  puts ''
  prompt "Dealer currently has: #{check_cards([dealer_hand[0]])}, and [?] "
  choice = 'none'
  who_won = nil
  while choice != 'stay' && calculate_total(player_hand) <= 21
    puts ''
    print "=> Please enter 'hit' to hit, 'stay' to stay: "
    choice = gets.chomp.downcase
    player_hand += deal!(deck, 1) if choice.start_with?('h')
    print "...#{'.' * rand(25)}"
    sleep 0.5
    puts "...#{'.' * rand(25)}"
    sleep 0.3
    system 'clear'
    prompt "Your current hand is: #{check_cards(player_hand)}"
    #prompt "Dealer's current hand is: #{check_cards(dealer_hand)}"
  end
  while (dealer_total = calculate_total(dealer_hand)) <= 21 && dealer_total < 17
    dealer_hand += deal!(deck, 1)
  end
  system 'clear'
  player_total = calculate_total(player_hand)
  dealer_total = calculate_total(dealer_hand)
  if player_total > 21
    prompt "Player busts, you lose with #{player_total}!"
  elsif player_total == 21 && dealer_total != 21
    who_won = 'player'
    prompt "You've got 21, well done!"
  elsif player_total > dealer_total
    who_won = 'player'
    prompt "You win with #{player_total}, way to go!"
  elsif player_total == dealer_total
    prompt "Not bad, it's a tie!"
  elsif dealer_total > 21
    who_won = 'player'
    prompt "The Dealer busts with #{dealer_total}, that means You win!"
  else
    prompt "You lost with #{player_total}, the Dealer wins with #{dealer_total}!"
  end

  case who_won
  when 'player'
    puts ''
    prompt "Player's hand: #{show_hand(player_hand)}"
    prompt "Dealer's hand: #{show_hand(dealer_hand)}"
    puts ''
  else
    puts ''
    prompt "Dealer's hand: #{show_hand(dealer_hand)}"
    prompt "Player's hand: #{show_hand(player_hand)}"
    puts ''
end
end

loop do
  system 'clear'
  shuffled_deck = shuffle_cards!(initialize_deck)
  choice = 'y'
  optional_counter = 0
  puts "><><>< Welcome to Twenty-One! ><><><
><><><><><><><><><><><><><><><><><><
=> This is the simple version:
=> Get to 21 (or as close to )
   biggest hand under 21 wins!
   just don't go over...
  "
  while shuffled_deck.size > 4 && choice.downcase != 'n'
    prompt "There are currently: #{shuffled_deck.size} cards left in the deck."
    puts ''
    if optional_counter == 0
      print '=> Would you like to play a hand? (y/n): '
    else
      prompt "Would you like to play another hand? (y/n)
    to start again with a new deck enter: restart"
    end
    choice = gets.chomp.downcase
    system 'clear'
    optional_counter += 1
    break unless choice.start_with?('y')

    play(shuffled_deck)
end
  break unless choice.start_with?('r')
end

puts 'Thank you for playing Twenty-One!'
