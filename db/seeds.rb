# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vote.destroy_all
Answer.destroy_all
Poll.destroy_all
Project.destroy_all
User.destroy_all

# Create user

file1 = File.open("app/assets/images/fanny.png")
user1 = User.new(name: "Manuela", email: "manuela@mail.com", password: "123456")
user1.avatar.attach(io: file1, filename: "fanny.png", content_type: 'image/png')
user1.save!

file2 = File.open("app/assets/images/emi.png")
user2 = User.new(name: "Tamara", email: "tamara@mail.com", password: "123456")
user2.avatar.attach(io: file2, filename: "emi.png", content_type: 'image/png')
user2.save!


# User 1: First projects
# project1 = Project.new(title: "Bachelorette", description: "Emi's bachelorette party", user_id: user1.id)
# project1.save
# project2 = Project.new(title: "Mayra's birthday", description: "Surprise birthday party", user_id: user1.id)
# project2.save
# project3 = Project.new(title: "Batch 875", description: "Best batch ever", user_id: user1.id)
# project3.save


# Project 1: First poll
# poll1 = Poll.new(title: "Where should we go?", description: "Ideas for the destination", deadline: "10/06/2022", user_id: user1.id, project_id: project1.id)
# poll1.save

# # Project 2: First poll
# poll2 = Poll.new(title: "What gift should we buy?", description: "Choose the best gift option for Mayra", deadline: "10/06/2022", user_id: user2.id, project_id: project2.id)
# poll2.save

# # Project 3: First poll
# poll3 = Poll.new(title: "What should we eat tomorrow?", description: "What are you craving for tomorrow?", deadline: "10/06/2022", user_id: user2.id, project_id: project3.id)
# poll3.save

# # Poll without project
# poll4 = Poll.new(title: "Which phone is the best?", description: "Valid voting over phones", deadline: "10/06/2022", user_id: user2.id)
# poll4.save

# poll5 = Poll.new(title: "What should we drink?", description: "Keep your hand off drinks without alcohol", deadline: "10/06/2022", user_id: user2.id)
# poll5.save

# # First poll of project 1: answers
# answer1 = Answer.new(title: "Medellin", poll_id: poll1.id)
# answer1.save
# answer2 = Answer.new(title: "Mykonos", poll_id: poll1.id)
# answer2.save
# answer3 = Answer.new(title: "Barcelona", poll_id: poll1.id)
# answer3.save

# # First poll of project 2: answers
# answer4 = Answer.new(title: "Prada purse", poll_id: poll2.id)
# answer4.save
# answer5 = Answer.new(title: "Makeup kit", poll_id: poll2.id)
# answer5.save
# answer6 = Answer.new(title: "Gold earrings", poll_id: poll2.id)
# answer6.save
# answer7 = Answer.new(title: "Jeep wrangler", poll_id: poll2.id)
# answer7.save

# # First poll of project 3: answers
# answer8 = Answer.new(title: "Zen bamboo", poll_id: poll3.id)
# answer8.save
# answer9 = Answer.new(title: "McDonald's", poll_id: poll3.id)
# answer9.save
# answer10 = Answer.new(title: "Ginos", poll_id: poll3.id)
# answer10.save


# # First poll of no project: answers
# answer11 = Answer.new(title: "iPhone", poll_id: poll4.id)
# answer11.save
# answer12 = Answer.new(title: "Samsung", poll_id: poll4.id)
# answer12.save
# answer13 = Answer.new(title: "Xiaomi", poll_id: poll4.id)
# answer13.save
# answer13 = Answer.new(title: "Nokia", poll_id: poll4.id)
# answer13.save

# # second poll of no project: answers
# answer14 = Answer.new(title: "Beer", poll_id: poll5.id)
# answer14.save
# answer15 = Answer.new(title: "Tequila", poll_id: poll5.id)
# answer15.save
# answer16 = Answer.new(title: "Vodka", poll_id: poll5.id)
# answer16.save
# answer17 = Answer.new(title: "Wine", poll_id: poll5.id)
# answer17.save
# answer18 = Answer.new(title: "Aguardiente", poll_id: poll5.id)
# answer18.save

# First poll of project 1 answers: votes
# vote1 = Vote.new(name: "Voter name", answer_id: answer1.id)
# vote1.save
# vote2 = Vote.new(name: "Voter name", answer_id: answer1.id)
# vote2.save
# vote3 = Vote.new(name: "Voter name", answer_id: answer1.id)
# vote3.save

# vote4 = Vote.new(name: "Voter name", answer_id: answer2.id)
# vote4.save
# vote5 = Vote.new(name: "Voter name", answer_id: answer2.id)
# vote5.save

# vote6 = Vote.new(name: "Voter name", answer_id: answer3.id)
# vote6.save


# # First poll of project 2 answers: votes
# vote7 = Vote.new(name: "Voter name", answer_id: answer4.id)
# vote7.save

# vote8 = Vote.new(name: "Voter name", answer_id: answer5.id)
# vote8.save
# vote9 = Vote.new(name: "Voter name", answer_id: answer5.id)
# vote9.save
# vote10 = Vote.new(name: "Voter name", answer_id: answer5.id)
# vote10.save

# vote11 = Vote.new(name: "Voter name", answer_id: answer6.id)
# vote11.save
# vote12 = Vote.new(name: "Voter name", answer_id: answer6.id)
# vote12.save


# # Votes for poll which is not part of a project
# vote13 = Vote.new(name: "Voter name", answer_id: answer7.id)
# vote13.save
# vote14 = Vote.new(name: "Voter name", answer_id: answer7.id)
# vote14.save

# vote15 = Vote.new(name: "Voter name", answer_id: answer8.id)
# vote15.save

# vote16 = Vote.new(name: "Voter name", answer_id: answer9.id)
# vote16.save
# vote17 = Vote.new(name: "Voter name", answer_id: answer9.id)
# vote17.save
# vote18 = Vote.new(name: "Voter name", answer_id: answer9.id)
# vote18.save
