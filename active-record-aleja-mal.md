📇 Challenge: Rolodex
Note: A rolodex is a collection of paper cards that contain people's names and contact information. They were a common household and office item in the pre-digital age.

As a developer, I have been tasked with creating a database model to store friends and family contact information. I want to ensure the database behaves as expected and the necessary information can be retrieved, added, updated, and deleted.

All tasks should be performed in order as listed below.

✔️ Acceptance Criteria
The rolodex application data should be managed by a PostgreSQL database in a Rails application.
The model should be called Person with first_name, last_name, and phone attributes. All data types should be strings.
Person.create(first_name: 'Mal', last_name: 'Sherer', phone: '12345678')
Add five friends and family members to the people table using the Rails console.
Retrieve all the people in the database.
3.2.0 :002 > Person.all
  Person Load (1.1ms)  SELECT "people".* FROM "people"
 => 
[#<Person:0x0000000109a1d218
  id: 1,
  first_name: "Mal",
  last_name: "Sherer",
  phone: "12345678",
  created_at: Thu, 28 Sep 2023 20:53:04.412477000 UTC +00:00,
  updated_at: Thu, 28 Sep 2023 20:53:04.412477000 UTC +00:00>]
Retrieve the third person in the database.
Retrieve only the first name of the first person in the database.
Remove the last person from the database.
Add yourself to the people table.
Retrieve all the people that have the same last name as you.
Retrieve only the first person from the list of people that have the same last name as you.
Update the phone number of the second person in the database.
Retrieve the last name of the third person in the database.
🏔 Stretch Goals
Update all the family members with the same last name as you to have the same phone number as you.
Remove all family members that do not have your last name.