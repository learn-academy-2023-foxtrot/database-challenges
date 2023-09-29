As a developer, I have been tasked with creating a database to store information for a bank that issues credit cards. The account owner must fill out a bank application that includes their name and address. Then account owners can be issued one or more credit cards. Credit cards must belong to an account owner.

-created the rails application:
 $ rails new associations -d postgresql -T
 -cd into the project:
 $ cd associations 
 -created an empty database:
 $ rails db:create
 -created the model for account owner:
 $ rails g model AccountOwner name:string address:string
 -migrated
 $ rails db:migrate
-created the model for credit card
$ rails g model CreditCard number:integer date:string owner_id:integer
-migrated
$ rails db:migrate
-opened the ruby console
$ rails c
-inside of the credit_card model
$  belongs_to :account_owner
-inside of the account_owner model
$  has_many :credit_cards
-in the ruby console created the three account owners
$ AccountOwner.create(name: 'Ilene', address: 'foxtrot Drive')
$ AccountOwner.create(name: 'Aleja', address: 'Echo Drive')
$ AccountOwner.create(name: 'Louis', address: 'Golf Drive')
-did a mistake in the name of our id column for credit card so we had to go and change the name of the column 
$ rails g migration change_name_column
-inside the migration in vscode we added the change
$ rename_column :credit_cards, :owner_id, :account_owner_id
-after doing the change we had to migrate it
$ rails db:migrate
-we opened the ruby console again
$ rails c
-we created 5 credit cards for three different users giving one user three credit cards
-to do that first we created a variable to find the owner id and associate it to the credit card
$ owner1= AccountOwner.find(1)
-then created the credit card for that owner
$ owner1.credit_cards.create(number: 23432342, date:'07/09/2028')
-then repeated that process for the rest of the credit cards
$ owner2= AccountOwner.find(2)
$ owner2.credit_cards.create(number: 432342, date:'07/09/2029')
$ owner3= AccountOwner.find(3)
$ owner3.credit_cards.create(number: 4222333, date:'08/09/2029')
$ owner3.credit_cards.create(number: 5854264, date:'08/09/2024')
$ owner3.credit_cards.create(number: 65142654, date:'08/12/2030')
-we needed to create a new column so we exited the rails console and started a new migration
$ rails g migration AddLimitColumn
-in the vs code we added the code to the migration file to create a new column
$ add_column :credit_cards, :limit, :integer
-then in the terminal we confirmed the migration
$ rails db:migrate
-we opened the ruby console again and created a new variable called owner1 looking for id 1 to be able to update the new column limit on that id
$ owner1=CreditCard.where(id:1)
-then we updated the column limit
$ owner1.update(limit:500)
-we repeated that process for all the ids and all the cards
$ owner2=CreditCard.where(id:2)
$ owner2.update(limit:1000)
$ owner3_card1=CreditCard.where(id:3)
$ owner3_card1.update(limit:200)
$ owner3_card2=CreditCard.where(id:4)
$ owner3_card2.update(limit:500)
$ owner3_card3=CreditCard.where(id:5)
$ owner3_card3.update(limit:100)
