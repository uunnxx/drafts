bob = ['Bob Smith', 42, 30000, 'software']
sue = ['Sue Jones', 45, 40000, 'hardware']

print(bob[0], sue[2])  # => Bob Smith 40000
print(bob[0].split()[-1])  # => Smith
sue[2] *= 1.25  # => give sue a 25% raise

# print(sue)  # => ['Sue Jones', 45, 50000.0, 'hardware']

print("----------------------------------------------------------------------")

# A database list

people = [bob, sue]
for person in people:
    print(person)

# => ['Bob Smith', 42, 30000, 'software']
# => ['Sue Jones', 45, 50000.0, 'hardware']


# Now the people list represents our database. We can fetch specific records by
# their relative positions and process them one at a time, in loops:
print(people[1][0])  # => Sue Jones

print("----------------------------------------------------------------------")

for person in people:
    print(person[0].split()[-1])  # => print last names
    person[2] *= 1.20  # => give each a 20% raise

# => Smith
# => Jones

for person in people: print(person[2])

# => 36000.0
# => 60000.0

# Now that we have a list, we can also collect values from records using
# some of Python's more powerful iteration tools, such as
# list comprehensions, maps, and generator expressions:

pays = [person[2] for person in people]  # => collect all pay
print(pays)
# [36000.0, 60000.0]

pays = map((lambda x: x[2]), people)  # => ditto (map is a generator in 3.x)
print(list(pays))
# [36000.0, 60000.0]

print(sum(person[2] for person in people))  # => (generator expression,
# => sum built-in)
# => 96000.0

# To add a record to the database, the usual list operations, such as
# 'append' and 'extend', will suffice:

people.append(['Tom', 50, 0, None])
print(len(people))  # => 3

print(people[-1][0])  # => Tom

print("----------------------------------------------------------------------")

# Feild labels

# page 7 (49 zathura)
