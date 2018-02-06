# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.create :name => "admin"

User.create :first_name => "victor", 
            :last_name => "bello", 
            :username =>"vbello", 
            :role_id=>1,
            :password_digest=>"$2a$10$SG4qYFbKGzBvNKBhZBEns.0ujSLZlyG0xb7yy60a/O9y05rXJecgi"
