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
user1 = User.new(name: "Manuela", email: "manuela@gmail.com", password: "123456")
user1.avatar.attach(io: file1, filename: "fanny.png", content_type: 'image/png')
user1.save!

file2 = File.open("app/assets/images/emi.png")
user2 = User.new(name: "Tamara", email: "tamara@gmail.com", password: "123456")
user2.avatar.attach(io: file2, filename: "emi.png", content_type: 'image/png')
user2.save!

# User 1: First projects
project1 = Project.new(title: "Joana's baby shower", description: "Let's keep this a secret!", user_id: user1.id)
project1.save
project2 = Project.new(title: "Mayra's birthday", description: "Ready for the best surprise birthday party?", user_id: user1.id)
project2.save
# project3 = Project.new(title: "Batch 875", description: "Let's make decisions for the best batch!", user_id: user1.id)
# project3.save
project4 = Project.new(title: "Joana's baby shower", description: "Let's keep this a secret!", user_id: user2.id)
project4.save
project5 = Project.new(title: "Mayra's birthday", description: "Ready for the best surprise birthday party?", user_id: user2.id)
project5.save
# project6 = Project.new(title: "Batch 875", description: "Let's make decisions for the best batch!", user_id: user2.id)
# project6.save

# Project 1: First poll
poll1 = Poll.new(title: "Where should we go?", description: "Let's pick a great place!", deadline: "11/06/2022", user_id: user1.id, project_id: project1.id)
poll1.save
poll2 = Poll.new(title: "Where should we go?", description: "Let's pick a great place!", deadline: "11/06/2022", user_id: user2.id, project_id: project4.id)
poll2.save

# Project 2: First poll
poll3 = Poll.new(title: "What gift should we buy?", description: "Choose the best gift option for Mayra", deadline: "15/06/2022", user_id: user1.id, project_id: project2.id)
poll3.save
poll4 = Poll.new(title: "What gift should we buy?", description: "Choose the best gift option for Mayra", deadline: "15/06/2022", user_id: user2.id, project_id: project5.id)
poll4.save
poll13 = Poll.new(title: "What's your budget?", description: "We'll choose accordingly!", deadline: "14/06/2022", user_id: user1.id, project_id: project2.id)
poll13.save
poll14 = Poll.new(title: "What's your budget?", description: "We'll choose accordingly!", deadline: "14/06/2022", user_id: user2.id, project_id: project5.id)
poll14.save

# Project 3: First poll
# poll5 = Poll.new(title: "What should we eat tomorrow?", description: "What are you craving for?", deadline: "17/06/2022", user_id: user1.id, project_id: project3.id)
# poll5.save
# poll6 = Poll.new(title: "What should we eat tomorrow?", description: "What are you craving for?", deadline: "17/06/2022", user_id: user2.id, project_id: project6.id)
# poll6.save

# Poll without project
poll7 = Poll.new(title: "What costume for Emi?", description: "Let's pick something fun!", deadline: "16/06/2022", user_id: user1.id)
poll7.save
poll8 = Poll.new(title: "What costume for Emi?", description: "Let's pick something fun!", deadline: "16/06/2022", user_id: user2.id)
poll8.save

# Poll without project
poll9 = Poll.new(title: "Do you like Gonzalo?", description: "Please be honest", deadline: "11/06/2022", user_id: user1.id)
poll9.save
poll10 = Poll.new(title: "Do you like Gonzalo?", description: "Please be honest", deadline: "11/06/2022", user_id: user2.id)
poll10.save

# First poll of project 1: answers
answer1 = Answer.new(title: "Restaurant", poll_id: poll1.id)
answer1.save
answer2 = Answer.new(title: "Public place", poll_id: poll1.id)
answer2.save
answer3 = Answer.new(title: "Someone's house", poll_id: poll1.id)
answer3.save
answer4 = Answer.new(title: "Restaurant", poll_id: poll2.id)
answer4.save
answer5 = Answer.new(title: "Public place", poll_id: poll2.id)
answer5.save
answer6 = Answer.new(title: "Someone's house", poll_id: poll2.id)
answer6.save

# First poll of project 2: answers
answer7 = Answer.new(title: "Prada purse", poll_id: poll3.id)
answer7.save
answer8 = Answer.new(title: "Makeup kit", poll_id: poll3.id)
answer8.save
answer9 = Answer.new(title: "Gold earrings", poll_id: poll3.id)
answer9.save
answer10 = Answer.new(title: "Jeep wrangler", poll_id: poll3.id)
answer10.save
answer11 = Answer.new(title: "Prada purse", poll_id: poll4.id)
answer11.save
answer12 = Answer.new(title: "Makeup kit", poll_id: poll4.id)
answer12.save
answer13 = Answer.new(title: "Gold earrings", poll_id: poll4.id)
answer13.save
answer14 = Answer.new(title: "Jeep wrangler", poll_id: poll4.id)
answer14.save

# Second poll of project 2: answers
answer25 = Answer.new(title: "10 € - 20 €", poll_id: poll13.id)
answer25.save
answer26 = Answer.new(title: "20 € - 50 €", poll_id: poll13.id)
answer26.save
answer27 = Answer.new(title: "50 € - 80 €", poll_id: poll13.id)
answer27.save
# answer28 = Answer.new(title: "80 € - 100 €", poll_id: poll9.id)
# answer28.save
answer29 = Answer.new(title: "10 € - 20 €", poll_id: poll14.id)
answer29.save
answer30 = Answer.new(title: "20 € - 50 €", poll_id: poll14.id)
answer30.save
answer31 = Answer.new(title: "50 € - 80 €", poll_id: poll14.id)
answer31.save
# answer32 = Answer.new(title: "80 € - 100 €", poll_id: poll10.id)
# answer32.save

# # First poll of project 3: answers
# answer15 = Answer.new(title: "Zen bamboo", poll_id: poll5.id)
# answer15.save
# answer16 = Answer.new(title: "McDonald's", poll_id: poll5.id)
# answer16.save
# answer17 = Answer.new(title: "Ginos", poll_id: poll5.id)
# answer17.save
# answer18 = Answer.new(title: "Zen bamboo", poll_id: poll6.id)
# answer18.save
# answer19 = Answer.new(title: "McDonald's", poll_id: poll6.id)
# answer19.save
# answer20 = Answer.new(title: "Ginos", poll_id: poll6.id)
# answer20.save

# First poll of no project: answers
answer21 = Answer.new(title: "Ariel", poll_id: poll7.id)
answer21.save
answer22 = Answer.new(title: "Pigeon", poll_id: poll7.id)
answer22.save
answer23 = Answer.new(title: "Minnie Mouse", poll_id: poll7.id)
answer23.save
answer24 = Answer.new(title: "Ariel", poll_id: poll8.id)
answer24.save
answer25 = Answer.new(title: "Pigeon", poll_id: poll8.id)
answer25.save
answer26 = Answer.new(title: "Minnie Mouse", poll_id: poll8.id)
answer26.save

# Second poll of no project: answers
answer21 = Answer.new(title: "Hell, no", poll_id: poll9.id)
answer21.save
answer22 = Answer.new(title: "Who is Gonzalo?", poll_id: poll9.id)
answer22.save
answer23 = Answer.new(title: "Hell, no", poll_id: poll10.id)
answer23.save
answer24 = Answer.new(title: "Who is Gonzalo?", poll_id: poll10.id)
answer24.save

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
vote1 = Vote.new(name: "Tamara T.", answer_id: answer1.id)
vote1.save
vote2 = Vote.new(name: "Mayra", answer_id: answer1.id)
vote2.save
vote3 = Vote.new(name: "Moritz", answer_id: answer2.id)
vote3.save
vote4 = Vote.new(name: "Manuela T.", answer_id: answer3.id)
vote4.save
vote5 = Vote.new(name: "Gonzalo", answer_id: answer4.id)
vote5.save
vote6 = Vote.new(name: "Emi", answer_id: answer4.id)
vote6.save
vote7 = Vote.new(name: "Fanny", answer_id: answer4.id)
vote7.save
vote8 = Vote.new(name: "Violette", answer_id: answer5.id)
vote8.save
vote9 = Vote.new(name: "Fernando", answer_id: answer5.id)
vote9.save
vote10 = Vote.new(name: "Ferdinand", answer_id: answer6.id)
vote10.save
vote11 = Vote.new(name: "Benedikt", answer_id: answer7.id)
vote11.save
vote12 = Vote.new(name: "Joana", answer_id: answer8.id)
vote12.save
vote13 = Vote.new(name: "Edu", answer_id: answer9.id)
vote13.save
vote14 = Vote.new(name: "Marcos", answer_id: answer10.id)
vote14.save
vote15 = Vote.new(name: "Juan", answer_id: answer10.id)
vote15.save
vote16 = Vote.new(name: "Tamara T.", answer_id: answer11.id)
vote16.save
vote17 = Vote.new(name: "Ana", answer_id: answer12.id)
vote17.save
vote18 = Vote.new(name: "Elena", answer_id: answer12.id)
vote18.save
vote19 = Vote.new(name: "Joana", answer_id: answer13.id)
vote19.save
vote20 = Vote.new(name: "María", answer_id: answer13.id)
vote20.save
vote21 = Vote.new(name: "Lucía", answer_id: answer13.id)
vote21.save
vote22 = Vote.new(name: "Nicole", answer_id: answer14.id)
vote22.save
# vote23 = Vote.new(name: "Fanny", answer_id: answer15.id)
# vote23.save
# vote24 = Vote.new(name: "Emi", answer_id: answer16.id)
# vote24.save
# vote25 = Vote.new(name: "Valeria", answer_id: answer17.id)
# vote25.save
# vote26 = Vote.new(name: "Barbara", answer_id: answer18.id)
# vote26.save
# vote27 = Vote.new(name: "Armando", answer_id: answer18.id)
# vote27.save
# vote28 = Vote.new(name: "Willy", answer_id: answer18.id)
# vote28.save
# vote29 = Vote.new(name: "Carlos", answer_id: answer18.id)
# vote29.save
# vote30 = Vote.new(name: "Pedro", answer_id: answer19.id)
# vote30.save
# vote31 = Vote.new(name: "Amanda", answer_id: answer19.id)
# vote31.save
# vote32 = Vote.new(name: "Michele", answer_id: answer20.id)
# vote32.save
# vote33 = Vote.new(name: "Lorenzo", answer_id: answer21.id)
# vote33.save
# vote34 = Vote.new(name: "Diego", answer_id: answer21.id)
# vote34.save
# vote35 = Vote.new(name: "Oliver", answer_id: answer22.id)
# vote35.save
# vote36 = Vote.new(name: "Ana V.", answer_id: answer23.id)
# vote36.save
# vote37 = Vote.new(name: "George", answer_id: answer23.id)
# vote37.save
# vote38 = Vote.new(name: "Alba", answer_id: answer23.id)
# vote38.save
# vote39 = Vote.new(name: "Geraint", answer_id: answer23.id)
# vote39.save
# vote40 = Vote.new(name: "Carla", answer_id: answer23.id)
# vote40.save
# vote41 = Vote.new(name: "Rachel", answer_id: answer23.id)
# vote41.save
# vote42 = Vote.new(name: "Mayra", answer_id: answer23.id)
# vote42.save
# vote43 = Vote.new(name: "Manuela T.", answer_id: answer23.id)
# vote43.save
# vote44 = Vote.new(name: "Moritz", answer_id: answer23.id)
# vote44.save
# vote45 = Vote.new(name: "Gonzalo", answer_id: answer24.id)
# vote45.save
# vote46 = Vote.new(name: "Emi", answer_id: answer23.id)
# vote46.save
# vote47 = Vote.new(name: "Gaspar", answer_id: answer23.id)
# vote47.save
# vote48 = Vote.new(name: "Paula", answer_id: answer24.id)
# vote48.save
# vote49 = Vote.new(name: "Sonia", answer_id: answer24.id)
# vote49.save
# vote50 = Vote.new(name: "Jennifer", answer_id: answer24.id)
# vote50.save
# vote51 = Vote.new(name: "John", answer_id: answer24.id)
# vote51.save
# vote52 = Vote.new(name: "Oscar", answer_id: answer24.id)
# vote52.save
# vote53 = Vote.new(name: "Petra", answer_id: answer24.id)
# vote53.save

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
