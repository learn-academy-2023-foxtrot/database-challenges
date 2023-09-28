Person.create(first_name: ’“Adrian”, last_name: ‘Ramirez’, phone: ‘555-1234’)
Person.create(first_name: ‘Tori’, last_name: ‘Calkins’, phone: ’555-5678)
 all_people = Person.all

 all_people = Person.all
third_person = all_people[2]
first_person_first_name = all_people.first.first_name
last_person = all_people.last
last_person.destroy
Person.create(first_name: ‘adrian’, last_name: ‘ramirez’, phone: ‘323-553’)
people_with_same_last_name = Person.where(last_name: ‘ramirez’)
second_person = all_people[1]
second_person.update(phone: ‘244-3434’)
third_person_last_name = third_person.last_name
third_person_last_name = third_person.last_name