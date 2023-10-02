<!-- Validations Challenges -->
<!-- Create a Rails application called company_contacts. The app will have a PostgreSQL database. -->
<!-- Generate a model called Account that has a username, a password, and an email. -->
<!-- All stories should have accompanying model specs. -->
<!-- Developer Stories -->

<!-- As a developer, I need username, password, and email to be required. -->
``` rb
validates :user_name, :password, :email, presence: true
it 'is valid with all attributes' do 
    user1 = Account.create(user_name:'Bob_the_Builder', password: 'weCanbuildIT', email: 'seXXyBob@outlook.com')
    p 'errors', user1.errors[:user_name]
    expect(user1.errors[:user_name]).to be_empty
    expect(user1.errors[:password]).to be_empty
    expect(user1.errors[:email]).to be_empty
  end 
  it 'requires username' do
    user1 = Account.create(user_name: nil, password: 'weCanbuildIT', email: 'seXXyBob@outlook.com')
    expect(user1.errors[:user_name]).to_not be_empty
  end 
  it 'require password' do
    user1 = Account.create(user_name:'Bob_the_Builder', password: nil, email: 'seXXyBob@outlook.com')
    expect(user1.errors[:password]).to_not be_empty
  end 
  it 'require email' do
    user1 = Account.create(user_name:'Bob_the_Builder', password: 'weCanbuildIT', email: nil)
    expect(user1.errors[:email]).to_not be_empty
  end 
  ```
<!-- As a developer, I need every username to be at least 5 characters long. -->
    ```rb
    validates :user_name, length: { minimum: 5 }
    it 'require at least 5 characters for username' do 
    user1 = Account.create(user_name:'Bob', password: 'weCanbuildIT', email: 'seXXyBob@outlook.com')
    p 'characters', user1.errors[:user_name]
    expect(user1.errors[:user_name]).to_not be_empty
    end 
  ```
<!-- As a developer, I need each username to be unique. -->
```rb
validates :user_name, uniqueness: true
it 'require each username to be unique' do
    Account.create(user_name:'Bob_the_Builder', password: 'weCanbuildIT', email: 'seXXyBob@outlook.com')
    user1 = Account.create(user_name:'Bob_the_Builder', password: 'weCanbuildIT', email: 'seXXyBob@outlook.com')
    expect(user1.errors[:user_name]).to_not be_empty
end 
```
<!-- As a developer, I need each password to be at least 6 characters long. -->
```rb
it 'requires at least 6 characters for password' do 
    user1 = Account.create(user_name:'Bob', password: 'build', email: 'seXXyBob@outlook.com')
    expect(user1.errors[:password]).to_not be_empty
end 
  ```
<!-- As a developer, I need each password to be unique. -->
```rb
validates :password, uniqueness: true
it 'requires the password to be unique' do 
    Account.create(user_name:'Bob_the_Builder', password: 'weCanbuildIT', email: 'seXXyBob@outlook.com')
    user1 = Account.create(user_name:'Bob_the_Builder', password: 'weCanbuildIT', email: 'seXXyBob@outlook.com')
    expect(user1.errors[:password]).to_not be_empty
end 
```
<!-- As a developer, I want my Account model to have many associated Addresses. -->
$ rails g model Addresses street_number:integer street_name:string city:string state:string zip:integer
<!-- As a developer, I want Address to have street_number, street_name, city, state, and zip attributes. The street_number and zip should be integers. -->
<!-- As a developer, I want to validate the presence of all fields on Address. -->
```rb
belongs_to :Account
```
```rb
validates :street_number, :street_name, :city, :state, :zip, presence: true
 it 'requires all of the fields' do 
    user_address = Address.create(street_number: 888, street_name: 'Quality Woods', city: 'Bobsville', state: 'Virginia', zip: 69420)
    expect(user_address.errors[:street_number]).to be_empty
    expect(user_address.errors[:street_name]).to be_empty
    expect(user_address.errors[:city]).to be_empty
    expect(user_address.errors[:state]).to be_empty
    expect(user_address.errors[:zip]).to be_empty
    end 
```

<!-- Stretch Challenges -->

<!-- As a developer, I need each Account password to have at least one number. -->
<!-- HINT: Read about custom validations in the Active Record validation docs. -->
```rb
it 'requires password to have at least one number' do 
    # PasswordValidator.create(password: "weCanbuildIT")
    user1 = Account.create(user_name:'Bob_the_Builder', password: 'weCanbuildIT', email: 'seXXyBob@outlook.com')
    expect(user1.errors[:password]).to_not be_empty
end 
```
```rb 
class PasswordValidator < ActiveModel::Validator
    def validate record
        if record.password != /\d/
        record.errors.add(:password, "your password needs at least one number")
        end
    end 
    # def validate(record)
        # unless record.password.include?(/\d/)
        #     record.errors.add :password, "Your password needs at least one number"
        # end 
    # end
end 
class Account < ApplicationRecord
    validates :user_name, :password, :email, presence: true
    validates :user_name, length: { minimum: 5 }
    validates :user_name, uniqueness: true
    validates :password, length: { minimum: 6}
    validates :password, uniqueness: true
    has_many :address
    validates_with PasswordValidator
end 


# class Password 
#     include ActiveModel::Validations
#     validates_with MyValidator
#     attr_accessor :password

#   def initialize(password)
#     @password = password
#   end
# end 
```
<!-- As a developer, I want to validate that Address street_number, street_name, zip are unique for within an account. -->
<!-- HINT: Read about :scope in the Active Record validation docs. -->

<!-- As a developer, I want to validate that the Address street_number and zip are numbers. -->
<!-- HINT: Read about numericality in the Active Record validation docs. -->

<!-- As a developer, I want to see a custom error message that says "Please, input numbers only" if street_number or zip code are not numbers. -->
<!-- HINT: Read about message in the validation docs. -->