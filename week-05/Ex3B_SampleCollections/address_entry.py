# 1.) Create contact_info dictionary

contact_info = {
    "name": "Edmund Viray",
    "address": "123 Bay Drive",
    "city": "Daly City",
    "state": "CA",
    "zip": "94015"
}

# 2.) Print address for mailing, using triple quotes for multi-line 
print(f'''
    {contact_info["name"]}
    {contact_info["address"]}
    {contact_info["city"]}
    {contact_info["state"]}
    {contact_info["zip"]}
'''
)

# 3.) Remove the key:value pair for name
del contact_info["name"]

# 4.) Add a new variable for full_name and assign its value as a dictionary containing two key:value pairs.
full_name = {
    "first name": "Edmund",
    "last name": "Viray"
}

# 5.) Use .update() to add an honorific
full_name.update(
    {"honorific": "Mr."}
)

#6.) Use .update() to add new full_name variable to contact info
contact_info.update(
    {"full_name": full_name}
)

#7.) Print new formatted address
print(f'''
    {contact_info["full_name"]["honorific"]}
    {contact_info["full_name"]["first name"]}
    {contact_info["full_name"]["last name"]}
    {contact_info["address"]}{contact_info["city"]}
    {contact_info["state"]}{contact_info["zip"]}
''')