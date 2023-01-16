# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding..."
users = User.create([
    {username:"user1", password:"123" , email:"user1@gmail.com", role:"user" , phone_number:"1234567890"},
    {username:"user2", password:"123" , email:"user2@gmail.com" , role:"user" , phone_number:"1234567890"},
    {username:"celeb1", password:"123" , email:"celeb1@gmail.com" , role:"celebrity" , phone_number:"1234567890"},
    {username:"celeb2", password:"123" , email:"celeb2@gmail.com" , role:"celebrity" , phone_number:"1234567890"}

])



profiles = Profile.create([
    {stage_name:"Stage name 2", artist_type:"comedian" , image:"https://i.pinimg.com/originals/0d/0d/0d/0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d0d.jpg" , user_id:4}


])


rates = Rate.create([
    {description:"1 min video" , price:"1000" , profile_id:1},
  
    {description:"3 min video" , price:"3000" , profile_id:1},
    {description:"3 min video" , price:"4000" , profile_id:2},
    {description:"1 min video" , price:"2000" , profile_id:2}

])

puts "Seeding done!"