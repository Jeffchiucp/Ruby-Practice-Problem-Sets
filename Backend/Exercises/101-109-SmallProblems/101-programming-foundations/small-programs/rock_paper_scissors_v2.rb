CHOICES = { "r" => "rock",
            "p" => "paper",
            "sc" => "scissors",
            "l" => "lizard",
            "sp" => "spock" }.freeze

WINS = {
  "rock" => %w(scissors lizard),
  "paper" => %w(rock spock),
  "scissors" => %w(paper lizard),
  "lizard" => %w(paper scpock),
  "spock" => %w(rock scissors)
}.freeze

scoreboard = {
  player: 0,
  computer: 0
}

def prompt(msg)
  puts "=> #{msg}"
end

def winner?(first, second)
  opponent = WINS[first]
  opponent.include?(second)
end

def display_winner(player, computer)
  if winner?(player, computer)
    prompt "You won that round!"
  elsif winner?(computer, player)
    prompt "Computer wins that round!"
  else
    prompt "It's a tie!"
  end
end

def valid_choice?(player_choice)
  CHOICES.include?(player_choice)
end

def computer_picks
  CHOICES.values.sample
end

def score(player, computer, scoreboard)
  if winner?(player, computer)
    scoreboard[:player] += 1
  elsif winner?(computer, player)
    scoreboard[:computer] += 1
  end
end

def display_score(player, computer, scoreboard)
  if winner?(player, computer)
    prompt "Player: #{scoreboard[:player]} Computer: #{scoreboard[:computer]}"
  elsif winner?(computer, player)
    prompt "Player: #{scoreboard[:player]} Computer: #{scoreboard[:computer]}"
  end
end

prompt "Welcome to Rock Paper Scissors Spock Lizard!"

loop do # main loop
  loop do # second loop
    puts "<><><><><><><><><><><><><><><><><><>"
    player_choice = ''
    loop do
      prompt "Pick One: (r) rock (p) paper (sc) scissors (sp) spock (l) lizard"
      player_choice = gets.chomp.downcase

      break if valid_choice?(player_choice)
      prompt "Please pick a valid option"
    end

    computer_choice = computer_picks
    prompt "You chose: #{CHOICES[player_choice]}, Computer chose:" \
           " #{computer_choice}"
    display_winner(CHOICES[player_choice], computer_choice)
    score(CHOICES[player_choice], computer_choice, scoreboard)
    display_score(CHOICES[player_choice], computer_choice, scoreboard)

    if scoreboard[:player] == 5
      prompt "Player wins it all!"
      break
    elsif scoreboard[:computer] == 5
      prompt "Computer wins it all!"
      break
    end
  end

  loop do
    prompt "Do you want to play again? Y or N "
    answer = gets.chomp.downcase
    if answer == 'y'
      scoreboard[:player] = 0
      scoreboard[:computer] = 0
      break
    elsif answer == 'n'
      prompt "Thanks for playing! Goodbye!"
      exit(0)
    else
      prompt "Invalid answer. Please enter Y or N."
    end
  end
end
