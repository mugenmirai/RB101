require 'yaml'

MESSAGES = YAML.load_file('mortgage_calculator_script.yml')

def messages(message, lang = 'en')
  MESSAGES[lang][message]
end

def prompt(message)
  puts "=> #{message}"
end

def startup_set_language(lang)
  loop do
    system 'clear'
    prompt(messages('start_select_language'))
    lang = gets.chomp.downcase
    break if %w[en es jp].include?(lang)

    prompt(messages('wrong_language'))
    animation
  end
  prompt(messages('chosen_language', lang))
  animation
  lang
end

def get_name # (name, lang)
  name = ''
  loop do
    prompt(messages('name', LANG))
    name = gets.chomp
    break unless name.empty?

    prompt(messages('error_empty_name', LANG))
    animation
  end
  name.capitalize
end

def get_loan_amount
  loan_amount = nil
  loop do
    prompt(messages('loan_amount', LANG))
    loan_amount = gets.chomp
    break if loan_amount.match?(/^\d+$/) && loan_amount.to_i > 0

    prompt(messages('wrong_loan_amount', LANG))
    animation
    # system 'clear'
  end
  loan_amount
end

def get_apr
  apr = nil
  loop do
    prompt(messages('apr', LANG))
    apr = gets.chomp
    break if apr.match?(/^\d+\.?\d+$/) || apr.match?(/^\d+$/) && apr.to_f > 0

    prompt(messages('invalid_apr', LANG))
    animation
  end
  apr
end

def get_time_length
  year_s = nil
  loop do
    prompt(messages('years', LANG))
    year_s = gets.chomp
    break if year_s.match?(/^\d+$/) && year_s.to_i > 0

    prompt(messages('years_error', LANG))
    animation
  end
  year_s
end

def calculate_again?
  response = ''
  loop do
    prompt(messages('again', LANG))
    response = gets.chomp
    break if response.start_with?('1') || response.start_with?('2')

    prompt(messages('again_error', LANG))
    animation
  end
  response
end

def int_rate_calc(rate)
  monthly_ir = ((rate.to_f / 100) / 12)
end

def mortgage_calc(loanamount, int_rate, lngth)
  monthly_payment = (loanamount.to_f * (int_rate / (1 - (1 + int_rate)**-lngth))).round(2)
end

def animation
  print ('.' * rand(3..15)).to_s
  sleep rand(0.1..0.9).round(1)
  print ('.' * rand(3..15)).to_s
  sleep rand(0.1..0.9).round(1)
  print ('.' * rand(3..15)).to_s
  sleep rand(0.1..0.9).round(1)
  puts ('.' * rand(3..15)).to_s
  sleep rand(0.1..0.9).round(1)
end

def format_num(input)
  input.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
end

def animation_tron
  print 'Calculating....'
  print ('.' * rand(3..15)).to_s
  print 'beep..Boooop....'
  sleep rand(0.1..0.9).round(1)
  print 'Calculando....'
  print ('.' * rand(3..15)).to_s
  print 'ehh..ohhh....'
  sleep rand(0.1..0.9).round(1)
  print '計算する'
  print ('.' * rand(3..15)).to_s
  print ('.' * rand(3..15)).to_s
  sleep rand(0.1..0.9).round(1)
  print 'ピコピコ！.....'
  sleep rand(0.1..0.9).round(1)
  print ('.' * rand(3..15)).to_s
  sleep rand(0.1..0.9).round(1)
  puts 'o.k.'
end
# ••••••••••••••••••••••••••••••••••••
loop do # main outer loop
  system 'clear'
  lang = ''
  LANG = startup_set_language(lang)
  name = get_name
  animation
  loop do
    system 'clear'
    response = ''
    loop do
      response = ''
      puts(messages('welcome', LANG))
      puts " => #{messages('current_user', LANG)} #{name}"
      loan_amount = get_loan_amount
      animation
      system 'clear'
      puts(messages('welcome_2', LANG))
      puts "=> #{messages('current user', LANG)} #{name} || #{messages('loan_display', LANG)} #{format_num(loan_amount)}" # *

      apr = get_apr
      animation

      system 'clear'
      puts(messages('welcome_2', LANG))
      puts "=> #{messages('current user', LANG)} #{name} || #{messages('loan_display', LANG)} #{format_num(loan_amount)} || APR: #{apr}%"
      year_s = get_time_length
      length = year_s.to_i * 12
      interest_rate = int_rate_calc(apr)
      mortgage = mortgage_calc(loan_amount, interest_rate, length)
      animation_tron
      system 'clear'
      puts(messages('welcome_2', LANG))
      prompt("#{messages('current user', LANG)} #{name} || #{messages('loan_display', LANG)} #{format_num(loan_amount)} || APR: #{apr}%")
      puts ''
      prompt "#{messages('show_monthly_payment', LANG)} #{mortgage}"
      puts ''
      response = calculate_again?
      break unless response.start_with?('1')

      prompt(messages('another_calc', LANG))
      animation
      system 'clear'
    end
    puts(messages('thank_you', LANG))
    animation
    break
    # In the following months - test resetting everything even language
  end
  break # ultimately always break out of this
end
