app/models/account.rb
```rb
class Account < ApplicationRecord
    validates :user_name, :password, :email, presence: true
    has_many :Addresses
    validates :user_name, :password, uniqueness: true
    validates :user_name, length: { minimum: 5 }
    validates :password, length: { minimum: 6 }
   
end
```
app/models/address.rb
```rb
class Address < ApplicationRecord
    belongs_to :Account
    validates :street_number, :street_name, :city, :state, :zip, presence: true
end
```
spec/models/account_spec.rb
```rb
require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is valid with all attributes' do
    george = Account.create(user_name: 'george123', password: 'password123', email: 'george@gmail.com') 
    expect(george.errors[:user_name]).to be_empty
  end
  it 'is not valid if missing username' do
    george = Account.create(user_name: nil, password: 'password123', email: 'george@gmail.com')
    expect(george.errors[:user_name]).to_not be_empty
  end
  it 'is not valid if missing password' do
    george = Account.create(user_name: 'george123', password: nil, email: 'george@gmail.com')
    expect(george.errors[:password]).to_not be_empty
  end
  it 'is not valid if missing email' do
    george = Account.create(user_name: 'george123', password: 'password123', email: nil)
    expect(george.errors[:email]).to_not be_empty
  end 
end
```
spec/models/address_spec.rb
```rb
require 'rails_helper'

RSpec.describe Address, type: :model do
    it 'is valid with all attributes' do
        george = Address.create(street_number: 456, street_name: 'main', city: 'long beach', state: 'CA', zip: 90712) 
        expect(george.errors[:street_name]).to be_empty
    end
    it 'is not valid without street_number' do
        george = Address.create(street_number: nil, street_name: 'main', city: 'long beach', state: 'CA', zip: 90712) 
        expect(george.errors[:street_number]).to_not be_empty
    end
    it 'is not valid without street_name' do
        george = Address.create(street_number: 456, street_name: nil, city: 'long beach', state: 'CA', zip: 90712) 
        expect(george.errors[:street_name]).to_not be_empty 
    end
    it 'is not valid without city' do
        george = Address.create(street_number: 456, street_name: 'main', city: nil, state: 'CA', zip: 90712) 
        expect(george.errors[:city]).to_not be_empty
    end
    it 'is not valid without state' do
        george = Address.create(street_number: 456, street_name: 'main', city: 'long beach', state: nil, zip: 90712) 
    expect(george.errors[:state]).to_not be_empty
    end
    it 'is not valid without zip' do
        george = Address.create(street_number: 456, street_name: 'main', city: 'long beach', state: 'CA', zip: nil) 
    expect(george.errors[:zip]).to_not be_empty
    end
end
```