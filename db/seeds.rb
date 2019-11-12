# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
customer1 = Customer.create(name: "Steve", zipcode: '11221', email: 'steve@gmail.com', password: '1234')
customer2 = Customer.create(name: "Diego", zipcode: '11224', email: 'diego@gmail.com', password: '1111')
customer3 = Customer.create(name: "Raq", zipcode: '11223' , email: 'raq@gmail.com', password: '2222')


laund1 = Laundromat.create(name: 'Bedstuy Best Wash', zipcode: '11221', email: 'bbw@gmail.com' , password: '0000')
laund2 = Laundromat.create(name: 'We Wash 4 U', zipcode: '11223', email: 'ww@gmail.com' , password: '7777')
laund3 = Laundromat.create(name: ' Dumbo Wash n Fold', zipcode: '11223', email: 'dwf@gmail.com' , password: '888')

employee1 = Employee.create(name: 'Yuri', laundromat: laund2)
employee2 = Employee.create(name: 'Paul', laundromat: laund1)
employee3 = Employee.create(name: 'Susan', laundromat: laund3)
employee4 = Employee.create(name: 'Sally', laundromat: laund1)
employee5 = Employee.create(name: 'Sam', laundromat: laund3)

order1 = Order.create(customer: customer1, laundromat: laund3, employee: employee5, order_type: 'delivery', loads: 5)
order2 = Order.create(customer: customer1, laundromat: laund2, employee: employee1, order_type: 'dropoff', loads: 2)
order3 = Order.create(customer: customer1, laundromat: laund1, employee: employee2, order_type: 'delivery', loads: 1)
order4 = Order.create(customer: customer1, laundromat: laund1, employee: employee4, order_type: 'dropoff', loads: 8)
order5 = Order.create(customer: customer1, laundromat: laund3, employee: employee2, order_type: 'delivery', loads: 4)
