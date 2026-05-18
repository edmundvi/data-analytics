# Creating classes
class Restaurant:
    '''
    This class stores the restaurant name and the type of food served.
    '''

# Create attributes for the class
    def __init__(self, rest_name, food_type):

# Create instance variables
        self.rest_name = rest_name
        self.food_type = food_type
    
# Methods to auto run when an object is created
# Method 1 to describe restaurant
    def describe_rest(self):
        print(f"{self.rest_name} serves {self.food_type}.")
    
# Method 2 to show restaurant is open 
    def rest_open(self):
        print(f"{self.rest_name} is open!")
    
#-----------------------------------------------------------

# Create objects for restaurants
rest1 = Restaurant("Krusty Krab", "fast food with love")
rest2 = Restaurant("Baratie", "seafood")
rest3 = Restaurant("Chum Bucket", "food?")

#-----------------------------------------------------------

# Call methods and print for each restaurant
rest1.describe_rest()
rest1.rest_open()
print()

rest2.describe_rest()
rest2.rest_open()
print()

rest3.describe_rest()
rest3.rest_open()