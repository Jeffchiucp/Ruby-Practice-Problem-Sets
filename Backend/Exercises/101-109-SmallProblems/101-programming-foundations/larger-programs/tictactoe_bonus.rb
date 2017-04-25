require 'pry'

INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMP_MARKER = 'O'.freeze
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagnals

FIRST_MOVE = 'choose'.freeze

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize, Metrics/MethodLength
def display_board(brd, scores)
  system "clear"
  puts "You're an #{PLAYER_MARKER}. Computer is #{COMP_MARKER}. First to 5 wins"
  puts "Player: #{scores['Player']}, Computer: #{scores['Computer']}"
  puts ""
  puts "      |     |"
  puts "  #{brd[1]}   |  #{brd[2]}  |  #{brd[3]}"
  puts "      |     |"
  puts "------+-----+-----"
  puts "      |     |"
  puts "  #{brd[4]}   |  #{brd[5]}  |  #{brd[6]}"
  puts "      |     |"
  puts "------+-----+-----"
  puts "      |     |"
  puts "  #{brd[7]}   |  #{brd[8]}  |  #{brd[9]}"
  puts "      |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize, Metrics/MethodLength

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joiner(arr, separator=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(separator)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square: (#{joiner(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |key, value| line.include?(key) && value == INITIAL_MARKER }.keys.first
  end
end

def computer_strategy(brd, marker)
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, marker)
    return square if square
  end
  nil
end

def comp_places_piece!(brd)
  square = computer_strategy(brd, COMP_MARKER)
  square = computer_strategy(brd, PLAYER_MARKER) unless square
  square = 5 if brd[5] == INITIAL_MARKER
  square = empty_squares(brd).sample unless square

  brd[square] = COMP_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMP_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def who_goes_first
  answer = ''
  prompt "Who would you like to go first this round? (player or computer)"
  loop do
    answer = gets.chomp.downcase
    if answer == "player" || answer == "computer"
      break
    else
      prompt "That's not a valid input"
    end
  end
  answer
end

def decide_turn?
  answer = who_goes_first if FIRST_MOVE == "choose"

  if FIRST_MOVE == "player" || answer == "player"
    true
  elsif FIRST_MOVE == "computer" || answer == "computer"
    false
  end
end

def play_one_round(brd, decide_turn)
  if decide_turn
    player_places_piece!(brd)
  else
    comp_places_piece!(brd)
  end
end

def play_again?
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp.downcase

  return true if answer == 'y'
  return false if answer == 'n'

  prompt "Please enter yes or no"
  play_again?
end

def display_winner(brd)
  if someone_won?(brd)
    prompt "#{detect_winner(brd)} won that round!"
  else
    prompt "It's a tie!"
  end
end

loop do # main loop
  scoreboard = { 'Player' => 0, 'Computer' => 0 }

  while scoreboard.values.max < 5
    board = initialize_board
    player_turn = decide_turn?

    loop do
      display_board(board, scoreboard)

      play_one_round(board, player_turn)

      if someone_won?(board) || board_full?(board)
        scoreboard[detect_winner(board)] += 1 if someone_won?(board)
        display_board(board, scoreboard)
        display_winner(board) if scoreboard.values.max < 5
        break
      end

      player_turn = !player_turn
    end
  end

  if scoreboard['Player'] == 5
    prompt "Player wins it all!"
  elsif scoreboard['Computer'] == 5
    prompt "Computer wins it all!"
  end

  break unless play_again?
end

prompt "Thanks for playing Tic Tac Toe! Goodbye!"
