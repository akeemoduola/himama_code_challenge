# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(email: 'akeem@example.com',
             username: 'Akeem',
             password: 'oakeem123$',
             password_confirmation: 'oakeem123$')

User.create!(email: 'tolulope@example.com',
             username: 'Tolulope',
             password: 'tolu123$',
             password_confirmation: 'tolu123$')

User.create!(email: 'victoria@example.com',
            username: 'Victoria',
            password: '1234567$',
            password_confirmation: '1234567$',
            admin: true)