=begin 
build a mortgage calculator

info we need:
    • loan amount
    • APR
    • Load Duration

#Calculate the following
  • monthly interest rate
  • loan duration in months

Formula:   m = p *  (j / (1-(1 + j)**(-n)))

m = monthly payment
p = loan amount
j = montly interest rate
n = loan duration in months



"What is the loan amount?: "
loan_amount = gets.to_i
"What is the Annual Percentage Rate(APR)?: "
apr = gets.to_f
"What is the loan duration?: "

=end


def prompt(message)
  puts "=> #{message}"
end

prompt("What is the loan amount?: ")
loan = gets.to_f.round(3)
prompt("What is the Annual Percentage Rate(APR)?: ")
apr = gets.to_f
prompt("What is the loan duration in years?: ")
duration = gets.to_i
duration_in_months = duration * 12
month_interest_rate = apr / 12

m = (loan * (month_interest_rate / (1-(1 + month_interest_rate)**(-duration_in_months))))#.round(2)
sleep 1
prompt("calculating your monthly interest rage....")
sleep 1
prompt '.......'
sleep 1
prompt '..........'
sleep 1
prompt("Your monthly intereset rate is #{m}")
prompt("Your loan duration in months is #{duration_in_months} months")
puts "Thank you for using the Mortgage calculator!"
