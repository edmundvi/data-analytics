# asset variables
cash = 800
bank_accounts = 80000
investments = 25000
car = 21000
house = 800000

# debt variables
mortgage = 40000
car = 300
credit_balance = 12000
subscriptions = 60

# calculate total assets
total_assets = cash + bank_accounts + investments + car + house

# calculate total debt
total_debts = mortgage + credit_balance + car

# calculate net worth
net_worth = total_assets - total_debts

# using f strings
print(f'Your total assets are {total_assets}')
print(f'Your total debt is {total_debts}')
print(f'Your net worth is {net_worth}')