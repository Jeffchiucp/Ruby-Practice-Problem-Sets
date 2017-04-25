# asks for two numbers.
# asks for the type of operation to perform: add, subtract, multiply or divide.
# performe the operation on two numbers.
# displays the result.

require 'yaml'

MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'fr'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(mes)
  Kernel.puts("=> #{mes}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operator_to_message(op)
  case op
  when '1'
    "Adding"
  when '2'
    "Subtracing"
  when '3'
    "Multiplying"
  when '4'
    "Dividing"
  end
end

prompt(messages('welcome', LANGUAGE))
# prompt(MESSAGES['welcome'])
# prompt("Welcome to Calculator! Enter your name:")
# prompt "Welcome to Calculator! Enter your name:"
name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt(messages('valid_name', LANGUAGE))
    # prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi there, #{name}!")

loop do
  num1 = ''
  loop do
    prompt("What's the first number: ")
    num1 = Kernel.gets().chomp()

    if valid_number?(num1)
      break
    else
      prompt("Hmm...that doesn't look like a valid number.")
    end
  end

  num2 = ''
  loop do
    prompt("What's the second number: ")
    num2 = Kernel.gets().chomp()

    if valid_number?(num2)
      break
    else
      prompt("Hmm...that doesn't look like a valid number.")
    end
  end

  prompt_operator = <<-Msg
    What operation you want to performe?
    1) Add
    2) Subtract
    3) Multiply
    4) Divide
  Msg

  prompt(prompt_operator)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

  result =  case operator
            when '1'
              num1.to_i() + num2.to_i()
            when '2'
              num1.to_i() - num2.to_i()
            when '3'
              num1.to_i() * num2.to_i()
            when '4'
              num1.to_f() / num2.to_f()
            end

  prompt("#{operator_to_message(operator)} the two numbers...")

  prompt("Result is: #{result}")

  prompt("Do you want to continue? \(Y to continue\)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Good bye!")