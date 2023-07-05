from faker import Faker
import random

fake = Faker()

data = []

for _ in range(100):
    data.append((_+1, random.randint(1, 100), fake.date()))

print(data)

