# distance=sqrt((x2-x1)**2+(y2-y1)**2)
import math

#set variables, coordinates
x1 = 2
y1 = 3

x2 = 12
y2 = 13

# calulate distance
distance = math.sqrt((x2 - x1) **2 + (y2 - y1) **2)

# print results
print(f"The distance between the points ({x1}, {y1}) and ({x2}, {y2}) equals {distance:.2f}")