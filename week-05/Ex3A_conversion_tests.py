# Description: This script tests various numeric
#              conversion techniques
# Author: Sam Q. Newprogrammer

a = " 101.1 "
b = '55'
c = "402 Stevens"
d = 'Number 5'

# 4.) Print variables and its type
print(a, type(a))
print(b, type(b))
print(c, type(c))
print(d, type(d))

# 5a.) Cast as integer using int()
#print(int(a))  #ValueError: invalid literal for int() with base 10: ' 101.1 '
print(int(b))
#print(int(c))  #ValueError: invalid literal for int() with base 10: '402 Stevens'
#print(int(d))  #ValueError: invalid literal for int() with base 10: 'Number 5'

# 5b.) Cast as float using float()
print(float(a))
print(float(b))
#print(float(c)) #ValueError: could not convert string to float: '402 Stevens'
#print(float(d)) #ValueError: could not convert string to float: 'Number 5'

# 5c.) For variable a, try casting into a float then integer
print(int(float(a))) # outputs 101

# 5d.) Slicing to add numeric portion of the string to a new variable
c_num = int(c[:3]) 
d_num = int(d[-2:])

print(c_num, type(c_num))
print(d_num, type(d_num))

# 5e.) For variable a and d, use the .strip() method to remove leading/trailing 
# spaces, within a print statement to display each result.
print(a.strip())
print(d.strip())