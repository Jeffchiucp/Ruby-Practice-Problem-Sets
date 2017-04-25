require "yaml"

MESSAGES = YAML.load_file('rpssl_messages.yml')

VALID_CHOICES = {
  "r" => "rock",
  "p" => "paper",
  "sc" => "scissors",
  "sp" => "spock",
  "l" => "lizard"
}

WIN_CONDITIONS = {
  "rock" => ["lizard", "scissors"],
  "paper" => ["rock", "spock"],
  "scissors" => ["paper", "lizard"],
  "spock" => ["scissors", "rock"],
  "lizard" => ["spock", "paper"]
}

GAME_SCORE = 5

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_choice_list
  prompt("Please choose one: ")
  VALID_CHOICES.each do |key, value|
    prompt("#{key} for #{value}")
  end
end

def get_input_from_player(bound_list)
  player_input = ''
  loop do
    display_choice_list
    player_input = Kernel.gets().chomp()
    if bound_list.include?(player_input)
      break
    else
      prompt(MESSAGES["wrong_input"])
    end
  end
  player_input
end

def win?(winner, loser)
  WIN_CONDITIONS[winner].include?(loser)
end

def display_immediate_result(player, computer)
  if win?(player, computer)
    prompt(MESSAGES["you_scored"])
  elsif win?(computer, player)
    prompt(MESSAGES["computer_scored"])
  else
    prompt(MESSAGES["tie"])
  end
end

def display_update_result(player_score, computer_score)
  Kernel.puts("\n")
  prompt("#{player_score} for you and #{computer_score} for computer".rjust(60))
  Kernel.puts("\n")
end

def display_final_result(player_score, computer_score)
  prompt("--------------------".center(60))
  if player_score > computer_score
    prompt("You win #{player_score} to #{computer_score}".upcase.center(60))
  else
    prompt("Computer win #{computer_score} to #{player_score}".center(60))
  end
  prompt("--------------------".center(60))
end

valid_choices_shorthand = []
VALID_CHOICES.each do |key, _|
  valid_choices_shorthand << key.to_s
end

player_score = 0
computer_score = 0
leading_score = 0

while leading_score < GAME_SCORE

  player_choice_shorthand = get_input_from_player(valid_choices_shorthand)
  player_choice = VALID_CHOICES[player_choice_shorthand]

  computer_choice_shorthand = valid_choices_shorthand.sample()
  computer_choice = VALID_CHOICES[computer_choice_shorthand]

  prompt("You chose #{player_choice}, computer chose #{computer_choice}")

  display_immediate_result(player_choice, computer_choice)

  if win?(player_choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, player_choice)
    computer_score += 1
  end

  display_update_result(player_score, computer_score)

  leading_score = [player_score, computer_score].max()

end

display_final_result(player_score, computer_score)

prompt(MESSAGES["bye"])
