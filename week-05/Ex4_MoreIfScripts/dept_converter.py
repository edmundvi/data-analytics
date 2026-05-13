# Use if/elif/else logic to print department name based on department code

code = int(input('What is your department code? '))

if code == 1:
    department = "Marketing"
elif code == 5:
    department = "Human Resources"
elif code == 10:
    department = "Accounting"
elif code == 12:
    department = "Legal"
elif code == 18:
    department = "IT"
elif code == 20:
    department = "Customer Relations"
else:
    department = "There is no department with that code number :("

print(department)