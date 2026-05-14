# Calculate federal tax based on values of gross annual income and a filing status
pay_rate = float(input("What is your pay rate? "))
hours_worked = float(input("How many hours did you work for the week? "))
filing_status = input("What is your filing status?: ")

# Calculate pay
if hours_worked > 40:
    overtime_hours = hours_worked - 40
    total_pay = (40 * pay_rate) + (overtime_hours * pay_rate * 1.5)
else: 
    total_pay = hours_worked * pay_rate 

annual_income = total_pay * 52

# Determine what to do depending on filing status
if filing_status == "single":
    if annual_income < 12000:
        tax_rate = 0.05
    elif annual_income < 25000:
        tax_rate = 0.10
    elif annual_income < 75000:
        tax_rate = 0.15
    else:
        tax_rate = 0.20

elif filing_status == "joint":
    if annual_income < 12000:
        tax_rate = 0.00 
    elif annual_income < 25000:
        tax_rate = 0.06
    elif annual_income < 75000:
        tax_rate = 0.11
    else:
        tax_rate = 0.20

tax_withheld = total_pay * tax_rate
net_pay = total_pay - tax_withheld

print("You worked", hours_worked, "hours this period.", "\n"
"Because you earn $", pay_rate, "per hour, your gross weekly pay is $", total_pay, "\n"
"Your filling status is", filing_status, "\n"
"Your tax withholding for the week is $", format(tax_withheld, ".2f"), "\n"
"Your net pay is $", format(net_pay, ".2f"))