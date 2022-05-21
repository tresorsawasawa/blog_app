# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

first_user = User.create(name: 'Tom', photo: 'https://user-images.githubusercontent.com/83042742/130520357-0eba230c-5e09-4c75-a93c-59f663e94ea6.png', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'https://user-images.githubusercontent.com/83042742/130520357-0eba230c-5e09-4c75-a93c-59f663e94ea6.png', bio: 'Teacher from Poland.')
