import math


# find variables of room
length = float(input('What is the length of the room in feet? '))
width = float(input('What is the width of the room in feet? '))

# find area of the room
area = length * width

# add 10% for chips, breakage, and mess-ups
tiles = area * 1.10

# calculate using math.ceil to round up
boxes = math.ceil(tiles / 12)

print(f"A room that is {length} feet long and {width} feet wide would need {boxes} boxes of tiles")