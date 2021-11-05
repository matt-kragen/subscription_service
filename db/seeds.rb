# Customers
c1 = Customer.create(
  first_name: 'John',
  last_name: 'Doe',
  email: 'example@example.com',
  address: '1234 Fake Street'
)
c2 = Customer.create(
  first_name: 'Jane',
  last_name: 'Doe',
  email: 'happy@happy.com',
  address: '4321 Num Street'
)
c3 = Customer.create(
  first_name: 'John',
  last_name: 'Smith',
  email: 'sad@sad.com',
  address: '5678 Chimp Ave'
)

# Teas
t1 = Tea.create(
  title: 'Green Tea',
  description: 'This is a green tea',
  temperature: 200,
  brew_time: 10
)
t2 = Tea.create(
  title: 'Black Tea',
  description: 'This is a black tea',
  temperature: 201,
  brew_time: 11
)
t3 = Tea.create(
  title: 'White Tea',
  description: 'This is a white tea',
  temperature: 202,
  brew_time: 12
)

# Subscriptions
s1 = Subscription.create(
  customer_id: c1.id,
  tea_id: t1.id,
  title: 'Subscription 1',
  price: 1.00,
  status: 'Active',
  frequency: 2
)
s2 = Subscription.create(
  customer_id: c1.id,
  tea_id: t1.id,
  title: 'Subscription 2',
  price: 2.00,
  status: 'Cancelled',
  frequency: 3
)
s3 = Subscription.create(
  customer_id: c2.id,
  tea_id: t2.id,
  title: 'Subscription 3',
  price: 3.00,
  status: 'Active',
  frequency: 1
)
s4 = Subscription.create(
  customer_id: c2.id,
  tea_id: t2.id,
  title: 'Subscription 4',
  price: 4.00,
  status: 'Cancelled',
  frequency: 2
)
s5 = Subscription.create(
  customer_id: c3.id,
  tea_id: t3.id,
  title: 'Subscription 5',
  price: 5.00,
  status: 'Active',
  frequency: 1
)
s6 = Subscription.create(
  customer_id: c3.id,
  tea_id: t3.id,
  title: 'Subscription 6',
  price: 6.00,
  status: 'Cancelled',
  frequency: 2
)
