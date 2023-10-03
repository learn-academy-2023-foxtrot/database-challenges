1. first create the database, installed the dependencies and migrated:
$ rails new company_contacts -d postgresql -T
$ cd company_contacts 
$ rails db:create
$ bundle add rspec-rails
$ rails generate rspec:install
$  rails g model Account username:string password:string email:string
$ rails db:migrate
$ rails server
- then opened a new terminal window 
- inside the spec/models
$ 
require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is not valid without a name' do
    first_person = Account.create password:'testing', email:'aleja@gmail.com'
    expect(first_person.errors[:name]).to_not be_empty
  end

  it 'is not valid without a password' do
    first_person = Account.create name:'alejandra', email:'aleja@gmail.com'
    expect(first_person.errors[:password]).to_not be_empty
  end

  it 'is not valid without an email' do
    first_person = Account.create name:'alejandra', password:'testinggrounds'
    expect(first_person.errors[:email]).to_not be_empty
  end

end


$
- then i tested:
$ rspec spec/models/account_spec.rb
- and this is the error
## Failures:
FFF

Failures:

  1) Account is not valid without a name
     Failure/Error: first_person = Account.create password:'testing', email:'aleja@gmail.com'
     
     NoMethodError:
       undefined method `name' for #<Account id: nil, username: nil, password: [FILTERED], email: "aleja@gmail.com", created_at: nil, updated_at: nil>
     # ./spec/models/account_spec.rb:5:in `block (2 levels) in <top (required)>'

  2) Account is not valid without a password
     Failure/Error: first_person = Account.create name:'alejandra', email:'aleja@gmail.com'
     
     ActiveModel::UnknownAttributeError:
       unknown attribute 'name' for Account.
     # ./spec/models/account_spec.rb:10:in `block (2 levels) in <top (required)>'

  3) Account is not valid without an email
     Failure/Error: first_person = Account.create name:'alejandra', password:'testinggrounds'
     
     ActiveModel::UnknownAttributeError:
       unknown attribute 'name' for Account.
     # ./spec/models/account_spec.rb:15:in `block (2 levels) in <top (required)>'

Finished in 0.01939 seconds (files took 0.63067 seconds to load)
3 examples, 3 failures

Failed examples:

rspec ./spec/models/account_spec.rb:4 # Account is not valid without a name
rspec ./spec/models/account_spec.rb:9 # Account is not valid without a password
rspec ./spec/models/account_spec.rb:14 # Account is not valid without an email

-then i validated
$
class Account < ApplicationRecord
    validates :name, :password, :email, presence: true
end
$

-then to ensure that the password is at least 5 words: 
$
it 'is not valid if username is less than 5 characters long' do
    first_person = Account.create name:'alejandra', password:'testinggrounds', email:'aleja@gmail.com'
    expect(first_person.errors[:password]).to_not be_empty
  end
$
and then i validated: 
$ validates :password, length: { minimum: 5}


- this is how my account.rb looks now: 
class Account < ApplicationRecord
    validates :name, :password, :email, presence: true
    validates :name, length: { minimum: 5}
    validates :name, uniqueness: true
    validates :password, length: { minimum: 5}
    validates :password, uniqueness: true
end

- this is how my account_spec.rb looks now:
require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is not valid without a name' do
    first_person = Account.create password:'testing', email:'aleja@gmail.com'
    expect(first_person.errors[:name]).to_not be_empty
  end

  it 'is not valid without a password' do
    first_person = Account.create name:'alejandra', email:'aleja@gmail.com'
    expect(first_person.errors[:password]).to_not be_empty
  end

  it 'is not valid without an email' do
    first_person = Account.create name:'alejandra', password:'testinggrounds'
    expect(first_person.errors[:email]).to_not be_empty
  end

  it 'is not valid if username is less than 5 characters long' do
    first_person = Account.create name:'alejandra', password:'testinggrounds', email:'aleja@gmail.com'
    expect(first_person.errors[:name]).to_not be_empty
  end

  it 'it needs the username to be unique' do
    Account.create(name:'alejandra', password:'testinggrounds', email:'aleja@gmail.com')
    first_person = Account.create(name:'alejandra', password:'testinggrounds', email:'aleja@gmail.com')
    expect(first_person.errors[:name]).to_not be_empty
  end

  it 'is not valid if password is less than 5 characters long' do
    first_person = Account.create name:'alejandra', password:'testinggrounds', email:'aleja@gmail.com'
    expect(first_person.errors[:password]).to_not be_empty
  end

  it 'it needs the password to be unique' do
    Account.create(name:'alejandra', password:'testinggrounds', email:'aleja@gmail.com')
    first_person = Account.create(name:'alejandra', password:'testinggrounds', email:'aleja@gmail.com')
    expect(first_person.errors[:password]).to_not be_empty
  end

end
aleja 