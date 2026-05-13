# Rewrite using a match/case statement

code = int(input('What is your department code? '))

match code:
    case 1:
        print('Marketing')
    case 5:
        print('Human Resources')
    case 10:
        print('Accounting')
    case 12:
        print('Legal')
    case 18:
        print('IT')
    case 20:
        print('Customer Relations')