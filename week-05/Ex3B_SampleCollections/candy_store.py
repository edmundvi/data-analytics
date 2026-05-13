# 2.) Create Tuples
candy = ("Skittles", "Starburst", "Mamba")
flavors = ("Lemony Lemon", "Limeny Lime", "Orangeny Orange")

# 3.) Create a new vairable to store candy cominations
candy_combinations = {
    flavors[1] + " " + candy[2],
    flavors[0] + " " + candy[1],
    flavors[2] + " " + candy[0]
}

# 4.) Print output message multiple times
for i in range(3):
    print("Today's candy options include: ")
    print(candy_combinations)

# Each time I print the output, the results are the same when looping, but running it again will change
# way that the combinations are ordered.