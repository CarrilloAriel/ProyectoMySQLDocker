from faker import Faker

fake = Faker()

data = []

for _ in range(100):
    data.append((_+1, fake.name(), fake.last_name(), fake.address(),
                 fake.phone_number(), fake.email()))

print(data)