# Exercise 22: Accessing SQLite3 from Python

import sqlite3

# Create a connection to thw.db
conn = sqlite3.connect('thw.db')

# Get a cursor to the connection - run queries, start transactions, etc.
cursor = conn.cursor()

# Query owned pets
cursor.execute("""
select * from person, person_pet, pet
    where person.id = person_pet.person_id and
    pet.id = person_pet.pet_id;
""")

# Create dict
temp_dict = []

for row in cursor:
    # tuple
    print(row)
    print(f">>>type(row): {type(row)}")
    # Update dict
    temp_dict.append({'person.id': row[0], 'person.first_name': row[1], \
    'person.last_name': row[2], 'person.age': row[3], 'person.dob': row[4], \
    'person_pet.person_id': row[5], 'person_pet.pet_id': row[6], \
    'person_pet.purchased_on': row[6], 'pet.id': row[7], 'pet.name': row[8], \
    'pet.breed': row[9], 'pet.age': row[10], 'pet.dead': row[11]})

# Check temp_dict
print(f">>>temp_dict[0]: {temp_dict[0]}")
print(f">>>type(temp_dict[0]): {type(temp_dict[0])}")
print(f">>>temp_dict[0].get('person.first_name'): {temp_dict[0].get('person.first_name')}")
print(f">>>temp_dict[0].get('pet.name'): {temp_dict[0].get('pet.name')}")

# Close connection
conn.close()
