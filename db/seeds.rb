# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create([{
                       email: 'canlin@gmail.com',
                       name: 'Canlin',
                       activated: DateTime.now,
                       admin: false
                      },
                      {
                       email: 'chrislin@gmail.com',
                       name: 'Chrislin',
                       activated: DateTime.now,
                       admin: false
                      }
                      ])