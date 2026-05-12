# tax calculation

import math

# set variables
monthly_salary = int(input("What is your monthly salary? "))
tax_rate = 0.23

# calculate 
tax_withheld = monthly_salary * tax_rate

#print results
print(f"A monthly salary of ${monthly_salary} will have ${tax_withheld:.2f} withheld for taxes")