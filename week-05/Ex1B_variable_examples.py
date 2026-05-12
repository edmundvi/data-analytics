customer_id = '707' # Although this is a number because they're categorical rather than numerical, I opted to use strings for this and the rest
customer_name = 'Edmund Viray' # Possible to include middle name, initials, format, etc
customer_gender = 'Male' # Wasn't sure what I should capitalize
customer_dob = '06/30/97' # Initially wrote format as June 30, 1997, format can be different.
drivers_license_no = '6446' #Licenses and auto numbers are categorical
auto_policy_no = '123'

self_name = 'Edmund Viray'
self_city = 'Daly City'
self_state = 'California'

# a) What is the full list of reserved words that can't be used for variable names?
   
# False 	def 	if          raise
# None      del 	import	    return
# True      elif	in          try
# and       else	is	        while
# as        except	lambda	    with
# assert	finally	nonlocal	yield
# break	    for	    not         print
# class	    form	or          
# continue	global	pass

# b) Pick 5 of the reserved words and explain how it is used as a keyword in python
    # input: allows the user to type something and enter data
    # if: conditional statement, if this then that
    # elif: short for else if, goes between if and else
    # while: conditional, starts a while loop, continues forever until condition is false
    # print: our starting point, prints out a value based on what's inside the ()