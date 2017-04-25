CHOICES = %w(rock paper scissors).freeze

def prompt(msg)
  puts "=> #{msg}"
end

def winner?(first, second)
  (first == "rock" && second == "scissors") ||
    (first == "scissors" && second == "paper") ||
    (first == "paper" && second == "rock")
end

def display_winner(player, computer)
  if winner?(player, computer)
    prompt "You won that round!"
  elsif winner?(computer, player)
    prompt "Computer wins that round"
  else
    prompt "it is tie!"
  end
end

def valid_choice?(player_choice)
  CHOICES.include?(player_choice)
end

def computer_picks
  CHOICES.sample
end

prompt "Welcome to Rock Paper Scissors!"

loop do
  puts "<><><><><><><><><><><><><><><><><><>"
  player_choice = ''
  loop do
    prompt "Pick One: #{CHOICES.join(', ')}"
    player_choice = gets.chomp.downcase

    break if valid_choice?(player_choice)
    prompt "Please pick a valid option"
  end

  computer_choice = computer_picks
  prompt "You chose: #{player_choice}, Computer chose: #{computer_choice}"

  display_winner(player_choice, computer_choice)

  loop do
    prompt "Do you want to play again? Y or N "
    answer = gets.chomp.downcase
    break if answer == 'y'
    if answer == 'n'
      prompt "Thanks for playing! Goodbye!"
      exit(0)
    else
      prompt "Invalid answer. Please enter Y or N."
    end
  end
end
