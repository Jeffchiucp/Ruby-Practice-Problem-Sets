LANGAGE = 'en'.freeze
require 'yaml'
MESSAGES = YAML.load_file('mortgage_calc_messages.yml')

def messages(message, lang = 'en')
  MESSAGES[lang][message]
end

def prompt(msg)
  puts "=> #{msg}"
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def number?(num)
  float?(num) || integer?(num)
end

def positive_num?(num)
  num.to_i.positive?
end

prompt(messages('welcome'))
loop do # main loop
  loan_amt = ''
  loop do
    prompt(messages('loan_amount'))
    loan_amt = gets.chomp

    break if number?(loan_amt) && positive_num?(loan_amt)
    prompt(messages('valid_number'))
  end

  apr = ''
  loop do
    prompt(messages('apr_amount'))
    apr = gets.chomp

    break if number?(apr) && !apr.to_i.negative?
    prompt(messages('valid'))
  end

  duration = ''
  loop do
    prompt(messages('loan_duration'))
    duration = gets.chomp

    break if number?(duration) && positive_num?(duration)
    prompt(messages('valid'))
  end

  if apr.to_i.zero?
    payment = loan_amt.to_i / duration.to_f
    format_pay = format('%.2f', payment)
    prompt "Your payment is $#{format_pay}"
  else
    int_rate = (apr.to_f / 100) / 12
    payment = loan_amt.to_i * (int_rate / (1 - (1 + int_rate)**-duration.to_i))
    formatted_pay = format('%.2f', payment)
    prompt "your payment is $#{formatted_pay}"
  end

  again = ''
  loop do
    prompt(messages('again'))
    again = gets.chomp.downcase

    break if again == 'y'
    if again == 'n'
      prompt(messages('bye'))
      exit(0)
    else
      prompt(messages('invalid_answer'))
    end
  end
end
