# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Accounting.destroy_all
User.destroy_all
Company.destroy_all
Customer.destroy_all
Invoice.destroy_all

puts 'Creating Accounts'
Accounting.create(id: 1, name: 'Sotec');
Accounting.create(id: 2, name: 'Serconta');
Accounting.create(id: 3, name: 'GPena');

puts 'Creating Users'
User.create(id: 1, email: 'teste@sotec.com.br', name: 'Teste-Sotec', password: 'sotec', accounting_id: 1)
User.create(id: 2, email: 'teste@serconta.com.br', name: 'Teste-Serconta', password: 'serconta', accounting_id: 2)
User.create(id: 3, email: 'teste@gpena.com.br', name: 'Teste-GPena', password: 'gpena', accounting_id: 3)

puts 'Creating Companies'
Company.create(id: 1, name: 'Ability', accounting_id: 1)
Company.create(id: 2, name: 'Gatinhos e Gatinhas', accounting_id: 1)
Company.create(id: 3, name: 'Apimelo', accounting_id: 2)
Company.create(id: 4, name: 'Multicar', accounting_id: 2)
Company.create(id: 5, name: 'Cartorio', accounting_id: 3)
Company.create(id: 6, name: 'Safol', accounting_id: 3)

puts 'Creating Customers'
Customer.create(id: 1, name: 'Stenio Oliveira')
Customer.create(id: 2, name: 'Saulo Morais')

puts 'Creating Invoices'
Invoice.create(id: 1, number: 111, serie: 'abc', total_value: 11234.33, customer_id: 1, company_id: 1)
Invoice.create(id: 2, number: 112, serie: 'abc', total_value: 1234.32, customer_id: 2, company_id: 1)
Invoice.create(id: 3, number: 113, serie: 'abc', total_value: 543.43, customer_id: 1, company_id: 2)
Invoice.create(id: 4, number: 114, serie: 'abc', total_value: 346.34, customer_id: 2, company_id: 2)
Invoice.create(id: 5, number: 115, serie: 'abc', total_value: 654.32, customer_id: 1, company_id: 3)
Invoice.create(id: 6, number: 116, serie: 'abc', total_value: 654.32, customer_id: 2, company_id: 3)
Invoice.create(id: 7, number: 117, serie: 'abc', total_value: 9087.78, customer_id: 1, company_id: 4)
Invoice.create(id: 8, number: 118, serie: 'abc', total_value: 765.87, customer_id: 2, company_id: 4)
Invoice.create(id: 9, number: 119, serie: 'abc', total_value: 346.34, customer_id: 1, company_id: 5)
Invoice.create(id: 10, number: 120, serie: 'abc', total_value: 654.23, customer_id: 2, company_id: 5)
Invoice.create(id: 11, number: 121, serie: 'abc', total_value: 1234.53, customer_id: 1, company_id: 6)
Invoice.create(id: 12, number: 122, serie: 'abc', total_value: 6765.40, customer_id: 2, company_id: 6)