# Create a script to have a greeting depending on current hour

hour = int(input("What is the current hour? "))

if hour >= 23 or hour < 4:
    print("What are you doing up so late??")
elif hour < 10:
    print("Good morning!")
elif hour < 17:
    print("Good day!")
else:
    print("Good evening!")