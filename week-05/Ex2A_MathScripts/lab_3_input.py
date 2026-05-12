# area of a triangle using input (area of rectangle divided by 2)

# ask for input to create variables
base = int(input('How long is the base? '))
height = int(input('How high is the height? '))

# calculate area of triangle
area = base * height / 2

# print results using an f string
print(f'Base = {base}')
print(f'Height = {height}')
print(f'The area of the triangle is {area}')