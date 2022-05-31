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
user1 = User.new(name: "First User", email: "mail1@mail.com", password: "123456")
user1.save
user2 = User.new(name: "Second User", email: "mail2@mail.com", password: "123456")
user2.save


# User 1: First two projects
project1 = Project.new(title: "First Project", description: "Description of first project", user_id: user1.id)
project1.save
project2 = Project.new(title: "Second Project", description: "Description of second project", user_id: user1.id)
project2.save

# Project 1: First poll
poll1 = Poll.new(title: "First Poll", description: "Description of first poll", deadline: "10/06/2022", user_id: user1.id, project_id: project1.id)
poll1.save

# Project 2: First poll
poll2 = Poll.new(title: "First Poll", description: "Description of first poll", deadline: "10/06/2022", user_id: user2.id, project_id: project2.id)
poll2.save

# Poll without project
poll3 = Poll.new(title: "First Poll", description: "Description of first poll", deadline: "10/06/2022", user_id: user2.id)
poll3.save

# First poll of project 1: answers
answer1 = Answer.new(title: "First Answer of first poll", poll_id: poll1.id)
answer1.save
answer2 = Answer.new(title: "Second Answer of first poll", poll_id: poll1.id)
answer2.save
answer3 = Answer.new(title: "Third Answer of first poll", poll_id: poll1.id)
answer3.save

# First poll of project 2: answers
answer4 = Answer.new(title: "First Answer of second poll", poll_id: poll2.id)
answer4.save
answer5 = Answer.new(title: "Second Answer of second poll", poll_id: poll2.id)
answer5.save
answer6 = Answer.new(title: "Third Answer of second poll", poll_id: poll2.id)
answer6.save

# First poll of no project: answers
answer7 = Answer.new(title: "First Answer of poll without project", poll_id: poll3.id)
answer7.save
answer8 = Answer.new(title: "Second Answer of poll without project", poll_id: poll3.id)
answer8.save
answer9 = Answer.new(title: "Third Answer of poll without project", poll_id: poll3.id)
answer9.save


# First poll of project 1 answers: votes
vote1 = Vote.new(name: "Voter name", answer_id: answer1.id)
vote1.save
vote2 = Vote.new(name: "Voter name", answer_id: answer1.id)
vote2.save
vote3 = Vote.new(name: "Voter name", answer_id: answer1.id)
vote3.save

vote4 = Vote.new(name: "Voter name", answer_id: answer2.id)
vote4.save
vote5 = Vote.new(name: "Voter name", answer_id: answer2.id)
vote5.save

vote6 = Vote.new(name: "Voter name", answer_id: answer3.id)
vote6.save


# First poll of project 2 answers: votes
vote7 = Vote.new(name: "Voter name", answer_id: answer4.id)
vote7.save

vote8 = Vote.new(name: "Voter name", answer_id: answer5.id)
vote8.save
vote9 = Vote.new(name: "Voter name", answer_id: answer5.id)
vote9.save
vote10 = Vote.new(name: "Voter name", answer_id: answer5.id)
vote10.save

vote11 = Vote.new(name: "Voter name", answer_id: answer6.id)
vote11.save
vote12 = Vote.new(name: "Voter name", answer_id: answer6.id)
vote12.save


# Votes for poll which is not part of a project
vote13 = Vote.new(name: "Voter name", answer_id: answer7.id)
vote13.save
vote14 = Vote.new(name: "Voter name", answer_id: answer7.id)
vote14.save

vote15 = Vote.new(name: "Voter name", answer_id: answer8.id)
vote15.save

vote16 = Vote.new(name: "Voter name", answer_id: answer9.id)
vote16.save
vote17 = Vote.new(name: "Voter name", answer_id: answer9.id)
vote17.save
vote18 = Vote.new(name: "Voter name", answer_id: answer9.id)
vote18.save
