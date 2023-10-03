Create a Rails application called company_contacts. The app will have a PostgreSQL database.
Generate a model called Account that has a username, a password, and an email.
All stories should have accompanying model specs.
Developer Stories

As a developer, I need username, password, and email to be required.
As a developer, I need every username to be at least 5 characters long.
As a developer, I need each username to be unique.
As a developer, I need each password to be at least 6 characters long.
As a developer, I need each password to be unique.
As a developer, I want my Account model to have many associated Addresses.
As a developer, I want Address to have street_number, street_name, city, state, and zip attributes. The street_number and zip should be integers.
As a developer, I want to validate the presence of all fields on Address.

 1006  git pull origin main
 1007  git checkout -b "validations-ar-lb"
 1008  touch validations-adrian-louis.md
 1009  code .
 1010  rails new validations -d postgresql -T
 1011  cd validations
 1012  rails db:create
 1013  bundle add rspec-rails
 1014  rails generate rspec:install
 1015  rails server
 1016  rails db:drop
 1017  rails db:create
 1018  rails db:migrate
 1019  rails server 

 3 examples, 0 failures

learnacademy@MacBook-Air validations % rspec spec/models/address_spec.rb
.....

Finished in 0.1553 seconds (files took 4.08 seconds to load)
5 examples, 0 failures

class Account < ApplicationRecord

    validates :username, :password, :email, presence: true
    validates :username, length: { minimum: 5 }
    validates :password, length: { minimum: 6 }
    validates :password, uniqueness: true
    validates :password, uniqueness: { }
end


require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is not valid without a username' do
    billy = Account.create email: "billy@gmail.com", password: "123456"
    expect(billy.errors[:username]).to_not be_empty
  end
  it 'is not valid without a password' do
    billy = Account.create email: "billy@gmail.com", username: "billy"
    expect(billy.errors[:password]).to_not be_empty
  end
  it 'is not valid without an email' do
    billy = Account.create username: "billy", password: "123456"
    expect(billy.errors[:email]).to_not be_empty
  end
end

class Address < ApplicationRecord
    belongs_to :account
    validates :street_number, :street_name, :city, :state, :zip, presence: true
end

require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'is not valid without a street number' do
    billy = Address.create street_name: "j", city: "san diego", state: "CA", zip: 92123
    expect(billy.errors[:street_number]).to_not be_empty
  end
  it 'is not valid without a street name' do
    billy = Address.create street_number: 3203, city: "san diego", state: "CA", zip: 92123
    expect(billy.errors[:street_name]).to_not be_empty
  end
  it 'is not valid without a city' do
    billy = Address.create street_number: 3203, street_name: "j", state: "CA", zip: 92123
    expect(billy.errors[:city]).to_not be_empty
  end
  it 'is not valid without a state' do
    billy = Address.create street_number: 3203, street_name: "j", city: "san diego", zip: 92123
    expect(billy.errors[:state]).to_not be_empty
  end
  it 'is not valid without a zip' do
    billy = Address.create street_number: 3203, street_name: "j", city: "san diego", state: "CA"
    expect(billy.errors[:zip]).to_not be_empty
  end
end