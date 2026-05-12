# birthday: 06/30
# import math in order to input pi
import math

# set variable (what do we know)
diameter = 30

#calculate radius
radius = diameter / 2

# calculate area using pi time radius 
area = math.pi * radius ** 2

#print area
print('The area of a circle with radius', radius, 'is', f'{area:.2f}')