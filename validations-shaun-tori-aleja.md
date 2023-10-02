####app/models/account.rb

```rb
RSpec.describe Account, type: :model do
  it 'is not valid if user name is less than five characters' do
    Shaun = Account.create user_name: 'shaunster', password: '123hello', email: 'shaun@shaun.com'
    expect(shaun.errors[:user_name]).to be_empty
  end
  it 'is not valid if the password is less than 6 characters or more than 20' do
    Shaun = Account.create user_name: 'shaunster', password: '123hello', email: 'shaun@shaun.com'
    expect(shaun.errors[:password]).to_not be_empty
  end
  it'is not valid if user_name and password are not unique' do
    Shaun = Account.create user_name: 'shaunster', password: '123hello', email: 'shaun@shaun.com'
    expect(shaun.errors[:user_name, :password]).to_not be_empty
  end
end
```



####app/models/account.rb

```rb
class Account < ApplicationRecord
    validates :user_name, :password, :email, presence: true
    validates :user_name, length: {minimum: 5}
    validates :password, length: { in: 6..20 }
    validates :password, :user_name, uniqueness: true
end

```