# Create variables
student_name = input('What is your name? ')
student_major = input ('What is your major code? ')

if student_major == 'BIOL':
    major_name = 'Biology'
    building = 'Science Bldg, Room 310'
elif student_major == 'CSCI':
    major_name = 'Computer Science'
    building = 'Sheppard Hall, Room 314'
elif student_major == 'ENG':
    major_name = 'English'
    building = 'Kerr Hall, Room 201'
elif student_major == 'HIST': 
    major_name = 'History'
    building = 'Kerr Hall, Room 114'
elif student_major == 'MKT':
    major_name = 'Marketing'
    building = 'Westly Hall, Room 310'
else:
    major_name = '<unknown>'
    building = ' '

print(f'''
    Student Name: {student_name}
    Major Code: {student_major}
    Major Name: {major_name}
    Building: {building}
''')