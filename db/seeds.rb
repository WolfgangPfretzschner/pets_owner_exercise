# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Owner.destroy_all
Pet.destroy_all

owner1 = Owner.create(name: "David")
owner2 = Owner.create(name: "Wolfgang")
owner3 = Owner.create(name: "Becky")

# pet1 = Pet.new(name: "David", pet_type: "cat", owner_id: 1)
# pet2 = Owner.new(name: "Wolfgang")
# pet3 = Owner.new(name: "Becky")
