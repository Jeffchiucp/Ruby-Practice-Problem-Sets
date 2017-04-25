SUITS = ['H', 'D', 'S', 'C'].freeze
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10',
          'J', 'Q', 'K', 'A'].freeze
PLAY_TO_TOTAL = 21
DEALER_MAX = 17

def prompt(msg)
  puts ">> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def deal_hand!(dck, player)
  2.times do
    player << dck.pop
  end
end

def bust?(hand)
  total(hand) > PLAY_TO_TOTAL
end

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    sum += if value == "A"
             11
           elsif value.to_i.zero?
             10
           else
             value.to_i
           end
  end

  # calculating aces
  values.count { |value| value == "A" }.times do
    sum -= 10 if sum > PLAY_TO_TOTAL
  end

  sum
end

def detect_results(player_cards, dealer_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > PLAY_TO_TOTAL
    :player_busted
  elsif dealer_total > PLAY_TO_TOTAL
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

def score(player_cards, dealer_cards, scoreboard)
  results = detect_results(player_cards, dealer_cards)

  case results
  when :player_busted, :dealer
    scoreboard['dealer'] += 1
  when :dealer_busted, :player
    scoreboard['player'] += 1
  end
end

def display_score(scoreboard)
  prompt ">> Player: #{scoreboard['player']}, Dealer: #{scoreboard['dealer']}"
end

def play_again
  loop do
    prompt "-------------------"
    prompt "Do you want to play again? (y or n)"
    answer = gets.chomp.downcase
    break if answer == 'y'
    if answer == 'n'
      prompt "Thank you for playing twenty-one! bye!"
      exit(0)
    else
      prompt "Invalid. Please enter y or n"
    end
  end
end

def display_game_status(player_cards, dealer_cards)
  prompt "----------"
  prompt "Dealer has #{dealer_cards}, for a total of: #{total(dealer_cards)}"
  prompt "Player has #{player_cards}, for a total of: #{total(player_cards)}"
  prompt "----------"
end

def display_game_summary(player_cards, dealer_cards, scoreboard)
  display_game_status(player_cards, dealer_cards)
  score(player_cards, dealer_cards, scoreboard)
  display_results(player_cards, dealer_cards)
  display_score(scoreboard)
end

loop do # main loop
  prompt "Welcome to Twenty One! First to 5 wins!"

  scoreboard = { 'player' => 0, 'dealer' => 0 }
  while scoreboard.values.max < 5
    prompt "<><><><><><><><><><><><><><><><>"
    deck = initialize_deck
    player_cards = []
    dealer_cards = []

    # initial deal
    deal_hand!(deck, player_cards)
    deal_hand!(deck, dealer_cards)

    prompt "Dealer has: #{dealer_cards[0]} and unknown"
    prompt "You have: #{player_cards[0]} and #{player_cards[1]}" \
           " for a total of: #{total(player_cards)}"

    # player turn
    loop do
      answer = nil
      loop do
        prompt "Would you like to (h)it or (s)tay?"
        answer = gets.chomp.downcase
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
      display_game_summary(player_cards, dealer_cards, scoreboard)
      next
    else
      prompt "You stayed at #{total(player_cards)}"
    end

    # dealer turn
    prompt "Dealer turn..."
    dealer_total = ''
    loop do
      break if bust?(dealer_cards) || total(dealer_cards) >= DEALER_MAX
      prompt "Dealer hits!"
      dealer_cards << deck.pop
      prompt "Dealer's cards are now: #{dealer_cards}"
    end

    dealer_total = total(dealer_cards)
    if bust?(dealer_cards)
      prompt "Dealer total is now #{dealer_total}"
      display_game_summary(player_cards, dealer_cards, scoreboard)
      next
    else
      prompt "Dealer stays at #{dealer_total}"
    end

    display_game_summary(player_cards, dealer_cards, scoreboard)

  end
  play_again
end
