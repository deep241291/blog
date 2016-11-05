# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


p "---------------------------------Creation of User--------------------------"

user1 = User.create(email: "user1@gmail.com", password: "12345678", name: "User 1", gender: MALE)

user2 = User.create(email: "user2@gmail.com", password: "12345678", name: "User 2", gender: FEMALE)

user3 = User.create(email: "user3@gmail.com", password: "12345678", name: "User 3", gender: MALE)

user4 = User.create(email: "user4@gmail.com", password: "12345678", name: "User 4", gender: FEMALE)

p "---------------------------------End of User-------------------------------"


p "---------------------------------Creation of Event--------------------------"

event1 = Event.create(name: "Bengaluru Citizenry Day", description: "RhOK in collaboration with organisations present Bangalore Citizenry day, an initiative to share DIYs, apps, Website and Knowledge amongst the citizens of Bangalore.", address: "Centre For Internet And Society - Access To Knowledge , East Bangalore", start_date: "2016-11-05", end_date: "2016-11-06", contact_email: "user5@gmail.com", contact_no: "1234567890", fees: "1000", created_by: user1.id)

event2 = Event.create(name: "Organic Vegetable Gardening and Composting workshop @ Banaswadi", description: "A 610 workshop on organic gardening. Going green, and being environmental friendly is the new mantra, and this workshop in is in tandem with that. In this interactive workshop, the gardening expert will take the participants through organic gardening and composting. Post this workshop, anybody can have their own terrace garden, the organic way.", address: "My Dream Garden , North Bangalore", start_date: "2016-12-01", end_date: "2016-12-07", contact_email: "user7@gmail.com", contact_no: "1234567890", fees: "2000", created_by: user1.id)

event3 = Event.create(name: "Voice Over and Dubbing Workshop", description: "The workshop will elaborate basic to complex principles of voice modulation and communication skills. Participants will be trained in voice-overs, communication skills, voice modulation skills, throat exercises to improve control, and also dubbing techniques. This is going to be a great event for professionals who believe their careers can benefit from voice modulation, students who are exploring these or in fact any other streamline career options, key personnel that asserts influence over other individuals, and people who just think they need to learn how to manipulate voice.", address: "Audiokraft Studios , South Bangalore", start_date: "2017-01-01", end_date: "2017-01-06", contact_email: "user8@gmail.com", contact_no: "1234567890", fees: "10000", created_by: user2.id)

event4 = Event.create(name: "Halloween Night - With Lijohn, Spyke, Dj Roshan", description: "Production5  Association With  Magnus Event Presents.The Mysterious Coffins Finally Opens up to Scare The Shit It out of you.Guys Get Ready To Trick Or Treat Because Its Halloween.", address: "My Dream Garden , North Bangalore", start_date: "2016-12-20", end_date: "2016-12-20", contact_email: "user9@gmail.com", contact_no: "1234567890", fees: "4000", created_by: user2.id)

 user1.events << event1 
 user1.events << event2

 user2.events << event3  
 user2.events << event4  

 user3.events << event3
 user4.events << event1

p "---------------------------------End of Event-------------------------------"