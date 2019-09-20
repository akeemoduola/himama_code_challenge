# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(email: 'akeem.oduola@andela.com',
             username: 'oakeem',
             password: 'lizzy123',
             password_confirmation: 'lizzy123')

User.create!(email: 'yemisi@gmail.com',
            username: 'yemo',
            password: 'lizzy123',
            password_confirmation: 'lizzy123',
            admin: true)