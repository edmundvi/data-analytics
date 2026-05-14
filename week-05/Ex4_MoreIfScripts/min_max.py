# Input numbers to determine smallest and largest numbers
a = int(input('Please enter the first number: '))
b = int(input('Please enter the second number: '))
c = int(input('Please enter the third number: '))

# Split the comparison variable
smallest = a
largest = a
# Use comparison variable to compare with other other variables
if b < smallest:
    smallest = b
if c < smallest:
    smallest = c
if b > largest:
    largest = b
if c > largest:
    largest = c

print(f'The smallest number is {smallest}')
print(f'The largest number is {largest}')