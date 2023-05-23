# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

profile = Userprofile.create(
    first_name: 'Ali',
    last_name: 'Raza',
    email: 'aliraza84@gmail.com',
    dob: '1-1-2000',
    gender: 'male',
    post: 'Hey... Im new here. Lets come to create happiness in this globe',
)
profile = Userprofile.create()

