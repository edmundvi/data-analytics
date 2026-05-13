# 2.) Create variables
x = 100
y = 20

# 3.) Use if blocks
# a.)
if x / y == 5:
    print("x divided by y is 5")
    x = 1
else:
    print("are the variables set up correctly?")

# b.)
if x * y == y:
    print("now x times y is y")
    x = 10
else:
    print(f"Whoops, x equals {x}")

# c.)
if x < y:
    print("x is less than y")
    x = x * 2
else:
    print("uh oh, x is not less than y")

# d.)
if x > y:
    print("How is x greated than y??")
else:
    print("x is NOT greater than y")

# e.)
print(f"The final value of x is {x} and the final value of y is {y}")