SUITS = ['H', 'D', 'S', 'C'].freeze
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].freeze

def prompt(msg)
  puts ">> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def deal_hand(dck, player)
  2.times do
    player << dck.pop
  end
end

def bust?(hand)
  total(hand) > 21
end

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i.zero? # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # calculating aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21 # if hand total includes an ace and is over 21, subtract 10 for each ace
  end

  sum
end

def detect_results(player_cards, dealer_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

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

def display_results(player_cards, dealer_cards)
  result = detect_results(player_cards, dealer_cards)

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

def display_cards(player, dealer)
  player_hand = []
  player.map { |card| player_hand << card[1] }
  prompt "Player has #{player_hand[0]} and #{player_hand[1]}, for a total of #{total(player_hand)}."

  dealer_hand = []
  dealer.each { |card| dealer_hand << card[1] }
  prompt "Dealer has #{dealer_hand[0]} and unknown."
end

def play_again?
  prompt "-------------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp.downcase
  answer.start_with?('y')
end

loop do # main loop
  prompt "Welcome to Twenty One!"

  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  # initial deal
  deal_hand(deck, player_cards)
  deal_hand(deck, dealer_cards)

  prompt "Dealer has #{dealer_cards[0]} and ?"
  prompt "You have: #{player_cards[0]} and #{player_cards[1]}, for a total of #{total(player_cards)}."

  # player turn
  loop do
    answer = nil
    loop do
      prompt "Would you like to (h)it or (s)tay?"
      answer = gets.chomp.downcase
      puts total(player_cards)
      break if ['h', 's'].include?(answer)
      prompt "Sorry, please enter 'h' or 's'."
    end

    if answer == 'h'
      player_cards << deck.pop
      prompt "You chose to hit!"
      prompt "Your card are now: #{player_cards}"
      prompt "Your total is now #{total(player_cards)}"
    end

    break if answer == 's' || bust?(player_cards)
  end

  if bust?(player_cards)
    display_results(player_cards, dealer_cards)
    play_again? ? next : break
  else
    prompt "You stayed at #{total(player_cards)}"
  end

  # dealer turn
  prompt "Dealer turn..."
  dealer_total = ''
  loop do
    break if bust?(dealer_cards) || total(dealer_cards) >= 17
    prompt "Dealer hits!"
    dealer_cards << deck.pop
    prompt "Dealer's cards are now: #{dealer_cards}"
  end

  dealer_total = total(dealer_cards)
  if bust?(dealer_cards)
    prompt "Dealer total is now #{dealer_total}"
    display_results(player_cards, dealer_cards)
    play_again? ? next : break
  else
    prompt "Dealer stays at #{dealer_total}"
  end

  prompt "----------"
  prompt "Dealer has #{dealer_cards}, for a total of: #{total(dealer_cards)}"
  prompt "Player has #{player_cards}, for a total of: #{total(player_cards)}"
  prompt "----------"

  display_results(player_cards, dealer_cards)

  break unless play_again?
end

prompt "Thank you for playing twenty-one! bye!"
