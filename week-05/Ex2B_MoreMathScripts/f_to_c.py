# fahrenheit=(celsius*9/5)+32

import math

#  input variables
fahrenheit = int(input("What is temperature in Fahrenheit? "))

# conversion formula
celsius = (fahrenheit - 32) * 5 / 9

# print result
print(f"{fahrenheit} degrees Fahrenheit equals {celsius:.0f} degrees Celsius.")