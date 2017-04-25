LANGUAGE = 'en'.freeze
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang = 'en')
  MESSAGES[lang][message]
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def number?(input) # allows for integer or float input by user
  integer?(input) || float?(input)
end

def prompt(msg)
  puts "=> #{msg}"
end

def operation_to_message(op)
  words = case op
          when '1' then 'Adding'
          when '2' then 'Subtracting'
          when '3' then 'Multiplying'
          when '4' then 'Dividing'
          end
  words
end

def do_again
  again = ''
  loop do
    prompt 'Do you want to perform another calculation? y or n'
    again = gets.chomp.downcase
    break if again == 'y'
    if again == 'n'
      prompt 'Goodbye!'
      exit(0)
    else
      puts 'Invalid input. Please enter y or n'
    end
  end
end

prompt(messages('welcome'))
loop do # main loop
  first_number = ''
  loop do
    prompt(messages('first_num'))
    first_number = gets.chomp

    break if number?(first_number)
    prompt(messages('valid_num'))
  end

  second_number = ''
  loop do
    prompt(messages('second_num'))
    second_number = gets.chomp

    break if number?(second_number)
    prompt(messages('valid_num'))
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
     1) add
     2) subtract
     3) multiply
     4) divide
  MSG

  prompt(operator_prompt)

  answer = ''
  loop do
    answer = gets.chomp

    break if %w(1 2 3 4).include?(answer)
    prompt(messages('valid_operation'))
  end

  prompt "#{operation_to_message(answer)} the two numbers..."
  sleep 1.5

  add = first_number.to_f + second_number.to_i
  subtract = first_number.to_f - second_number.to_i
  multiply = first_number.to_f * second_number.to_i
  divide = first_number.to_f / second_number.to_i
  divide_format = format('%.2f', divide)

  case answer
  when '1'
    prompt "#{first_number} + #{second_number} = #{add}"
  when '2'
    prompt "#{first_number} - #{second_number} = #{subtract}"
  when '3'
    prompt "#{first_number} * #{second_number} = #{multiply}"
  when '4'
    prompt "#{first_number} / #{second_number} = #{divide_format}"
  end

  do_again
end
