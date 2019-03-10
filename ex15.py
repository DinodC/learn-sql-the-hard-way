# Exercise 15: Group by and counts
# This script generates ex15.sql

import random
from datetime import timedelta, datetime

words = [x.strip().capitalize() for x in open("code/words.txt").readlines()]
breeds = ['Tiger', 'Cheetah', 'Ox', 'Zebra']

pet_names = words[:len(words)/2]
owner_names = words[len(words)/2:]

owner_insert = '''INSERT INTO person
    VALUES({id}, '{first}', '{last}', {age}, '{dob}');'''
pet_insert = '''INSERT INTO pet
    VALUES({id}, '{name}', '{breed}', {age}, '{dead}');'''
relate_insert = '''INSERT INTO person_pet
    VALUES({person_id}, {pet_id}, '{purchased_on}');'''

sql = []

def random_date():
    years = 365 * random.randint(0, 50)
    days = random.randint(0, 365)
    hours = random.randint(0, 24)
    past = timedelta(days=years + days, hours=hours)
    return datetime.now() - past

# Make a bunch of random pets
for i in range(0, 100):
    id = i
    age = random.randint(0, 20)
    breed = random.choice(breeds)
    name = random.choice(pet_names)
    dead = random.randint(0, 1)
    sql.append(pet_insert.format(id=id, age=age, breed=breed, name=name, dead=dead))

# Make a bunch of random people
for i in range(0, 100):
    id = i
    age = random.randint(0, 100)
    first = random.choice(owner_names)
    last = random.choice(owner_names)
    dob = random_date()
    sql.append(owner_insert.format(id=id, age=age, first=first, last=last, dob=dob))

# Only sample from the middle of IDs to connect pets and people
# This avoids the first few IDs that have been taken in the db
# And ensures some unowned pets and owners without pets
for i in range(0, 75):
    person_id = random.randint(5, 95)
    pet_id = random.randint(5, 95)
    purchased_on = random_date()
    sql.append(relate_insert.format(person_id=person_id, pet_id=pet_id, purchased_on=purchased_on))

# This is destructive, normally you'd check and ask to overwrite
with open("ex15.sql", "w") as output:
    output.write("\n".join(sql))
