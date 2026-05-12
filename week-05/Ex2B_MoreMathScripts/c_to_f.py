# celsius=(fahrenheit-32)*5/9

import math

#  input variables
celsius = int(input("What is temperature in Celsius? "))

# conversion formula
fahrenheit = (celsius * 9 / 5) + 32

# print result
print(f"{celsius} degrees Celsius equals {fahrenheit:.0f} degrees Fahrenheit.")