# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_st = Student.create(name: 'Samuel', email: 'ackons@gmail.com', 
phone_number: '0557693112', programme_name: 'Electrical')
second_st = Student.create(name: 'Ackon', email: 'ackons@gmail.com', 
phone_number: '0557693112', programme_name: 'Electrical')
third_st = Student.create(name: 'Yaw', email: 'ackons@gmail.com', 
phone_number: '0557693112', programme_name: 'Electrical')
fourth_st = Student.create(name: 'Ekow', email: 'ackons@gmail.com', 
phone_number: '0557693112', programme_name: 'Electrical')

first_club = Club.create(approved: true, email: 'ackons433@gmail.com', executive_size: 3,
group: 'IT', meeting_days: 'Thursday', meeting_times: '7pm', 
meeting_places: 'TimeSquare', name: 'Leetcode Campus', telephone_number: '0557693112')

second_club = first_club = Club.create(approved: true, email: 'ackons433@gmail.com', executive_size: 3,
group: 'IT', meeting_days: 'Thursday', meeting_times: '7pm', 
meeting_places: 'TimeSquare', name: 'Hackerrank Campus', telephone_number: '0557693112')

# ClubStudent.create(clubs: first_club, students: first_st)
# ClubStudent.create(clubs: second_club, students: second_st)
# ClubStudent.create(clubs: second_club, students: third_st)
# ClubStudent.create(clubs: second_club, students: fourth_st)

