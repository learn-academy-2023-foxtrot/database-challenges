
added a migration file to add foreign key. Used add_column first for the column then add_foreign_key to add FK to address table.

Created new RSpec for address and added  the account info from Account table.
Made a new address variable and connected it to user.

  address = user.addresses.create street_name: 'nowhere st', street_number: 8367,  city: 'San Diego', state: 'CA', zip:94787

   Making a new migration file: rails g migration AddForeignKey


   ###Model code 
   class Account < ApplicationRecord
    has_many :addresses

    validates :username, :password, :email, presence: true
    validates :username, :password, :email, length: {minimum:5}
    validates :username, uniqueness: true
    validates :password,length: {minimum:6}, uniqueness: 
    true
    
end

class Address < ApplicationRecord
    belongs_to :account, optional: true
    validates :street_number, :street_name, :city, :state, :zip, presence: true 
end

###schema


ActiveRecord::Schema[7.0].define(version: 2023_10_02_220611) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "username"
    t.integer "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.integer "street_number"
    t.string "street_name"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
  end

  add_foreign_key "addresses", "accounts"
end


### spec test

require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'has a vaild entry'do
  user = Account.create username: 'blabla', password: 565656, email: 'johnjohn@nobody.com' 
  expect(user.errors[:username]).to be_empty
  expect(user.errors[:password]).to be_empty
  expect(user.errors[:email]).to be_empty
  end
  it 'has more than five characters' do
    user = Account.create username: 'blabla', password: 565656, email: 'johnjohn@nobody.com'
    expect(user.errors[:password]).to be_empty
  end
  it 'user has to be unique ' do
    user = Account.create username: 'blabla', password: 565656, email: 'johnjohn@nobody.com'
    expect(user.errors[:password]).to be_empty
end
it 'password has to be unique and six integers long' do
  user = Account.create username: 'blabla', password: 5656656, email: 'johnjohn@nobody.com'
  expect(user.errors[:password]).to be_empty
end
end

require 'rails_helper'

RSpec.describe Address, type: :model do
it 'vaild with all attributes'do
  user = Account.create username: 'blabla', password: 565656, email: 'johnjohn@nobody.com' 
  p address = user.addresses.create street_name: 'nowhere st', street_number: 8367,  city: 'San Diego', state: 'CA', zip:94787
  expect(user.errors[:street_name]).to be_empty
  expect(user.errors[:street_number]).to be_empty
  expect(user.errors[:city]).to be_empty
  expect(user.errors[:state]).to be_empty
  expect(user.errors[:zip]).to be_empty
end
end





rails generate model Adress street_number:integer street_name:string city:string state:string zip:integer

rails g migration AddForeignKey


db/migrate/20231002232451_add_foreign_key.rb
class AddForeignKey < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses, :account_id, :integer
    add_foreign_key :addresses, :accounts, column: :account_id 

  end
end

