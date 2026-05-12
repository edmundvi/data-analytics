import math

# set variables
investment = 1000
interest_rate = 0.05

# rule of 72
years_to_double = 72 / (interest_rate * 100)
investment2 = investment * 2
print('Your current savings is', investment)

# I remembered formatting longer statements like this in the past
print(
    'At a', 
    format(interest_rate, ".0%"), 
    'interest rate, your savings account will be worth', 
    format(investment2, ".2f"), 
    'in', 
    format(years_to_double,".1f"), 
    'years.'
)