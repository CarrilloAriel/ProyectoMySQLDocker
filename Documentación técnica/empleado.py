from faker import Faker
import random

fake = Faker()

data = []

for _ in range(100):
    data.append((_+1,random.randint(1, 10), fake.name(), fake.last_name(), fake.job()))

