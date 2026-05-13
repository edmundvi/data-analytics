#Create a script to calculate gorss pay, with hours over 40 hours being overtime at 1.5 rate of regular hours

pay_rate = float(input("How much are you paid per hour? "))
hours_worked = float(input("How many hours did you work for the week? "))

# If no overtime
if hours_worked <= 40:
    total_pay = pay_rate * hours_worked
else: #If overtime
    overtime_hours = hours_worked - 40
    overtime_pay = (pay_rate * 1.5) * overtime_hours
    regular_pay = hours_worked * pay_rate
    total_pay = regular_pay + overtime_pay

print(f"Your total pay is ${total_pay:.2f}")