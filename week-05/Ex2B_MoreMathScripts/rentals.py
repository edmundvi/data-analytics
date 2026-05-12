import math

#set variables
no_people = int(input('How many people are going on the tour? '))
no_days = int(input('How many days will the tour be? '))

#calculate how many vans needed for the amount of people
vans = math.ceil(no_people / 15)
cost = no_days * 250
total_cost = cost * vans

#calculate cost per person
cost_per_person = math.ceil(total_cost / no_people)

print(f"For {no_people} people we will need {vans} van/s")
print(f"For {no_people} days it will cost ${total_cost}")
print(f"Cost per person is ${round(cost_per_person,2)}")

# a) for 38 people, each person would have to be charged $198
# b) multiplied by 38, we collected $7,524
# c) the vans total cost $7,500
# d) we have leftover money due to rounding the cost per person