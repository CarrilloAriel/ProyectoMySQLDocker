from faker import Faker
import random

fake = Faker()

data = []

for _ in range(100):
    data.append((_+1, fake.date(), fake.text(), random.choice([True, False]), random.randint(1, 100) ,
                 random.randint(1, 4), random.randint(1, 100)))
