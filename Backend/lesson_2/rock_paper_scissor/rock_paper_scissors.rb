VALID_CHOICE = %w(rock lizard spock scissors paper)

def win?(player1, player2)
  (player1 == 'paper' && player2 == 'rock') ||
    (player1 == 'rock' && player2 == 'lizard') ||
    (player1 == 'lizard' && player2 == 'spock') ||
    (player1 == 'spock' && player2 == 'scissors') ||
    (player1 == 'scissors' && player2 == 'lizard') ||
    (player1 == 'lizard' && player2 == 'paper') ||
    (player1 == 'paper' && player2 == 'spock') ||
    (player1 == 'spock' && player2 == 'rock') ||
    (player1 == 'rock' && player2 == 'scissors') ||
    (player1 == 'scissors' && player2 == 'paper')
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("Tie!")
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  player_choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICE.join(', ')}")
    player_choice = Kernel.gets().chomp()
    if VALID_CHOICE.include?(player_choice)
      break
    else
      prompt("That is not a valid user.")
    end
  end

  computer_choice = VALID_CHOICE.sample()

  prompt("You chose: #{player_choice} and computer chose: #{computer_choice}")

  display_result(player_choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good bye!")
