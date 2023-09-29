As a developer, I have been tasked with creating a database to store information for a bank that issues credit cards. The account owner must fill out a bank application that includes their name and address. Then account owners can be issued one or more credit cards. Credit cards must belong to an account owner.

✔️ Acceptance Criteria
The banking application data should be managed by a PostgreSQL database in a Rails application.
An account owner should have a name and an address.
There should be at least three owners in the database.
A credit card has a number and an expiration date.
Remember! Credit cards CANNOT exist without an account owner.
Think about the purpose of each data type and what characters are necessary in each column. (Example: 02/2023 vs 02-02-2023)
Each account owner should have at least one credit card.
At least one account owner should have three credit cards.
🏔 Stretch Goals
Add a credit limit to each card.
Find the total credit extended to an owner who has multiple credit cards.

CreditCard.all
  CreditCard Load (0.5ms)  SELECT "credit_cards".* FROM "credit_cards"
 => 
[#<CreditCard:0x00000001060fcf88
  id: 1,
  number: 23432342,
  date: "07/09/2028",
  account_owner_id: 1,
  created_at: Fri, 29 Sep 2023 18:28:58.304717000 UTC +00:00,
  updated_at: Fri, 29 Sep 2023 18:28:58.304717000 UTC +00:00>,
 #<CreditCard:0x00000001060fce48
  id: 2,
  number: 43242,
  date: "07/09/2029",
  account_owner_id: 2,
  created_at: Fri, 29 Sep 2023 18:31:38.609447000 UTC +00:00,
  updated_at: Fri, 29 Sep 2023 18:31:38.609447000 UTC +00:00>,
 #<CreditCard:0x00000001060fcd08
  id: 3,
  number: 4222333,
  date: "08/09/2029",
  account_owner_id: 3,
  created_at: Fri, 29 Sep 2023 18:32:37.324915000 UTC +00:00,
  updated_at: Fri, 29 Sep 2023 18:32:37.324915000 UTC +00:00>] 

  3.2.0 :011 > AccountOwner.all
  AccountOwner Load (0.4ms)  SELECT "account_owners".* FROM "account_owners"
 => 
[#<AccountOwner:0x000000010582a6f8
  id: 1,
  name: "Ilene",
  address: "foxtrot Drive",
  created_at: Fri, 29 Sep 2023 17:48:41.977289000 UTC +00:00,
  updated_at: Fri, 29 Sep 2023 17:48:41.977289000 UTC +00:00>,
 #<AccountOwner:0x000000010582a658
  id: 2,
  name: "Aleja",
  address: "Echo Drive",
  created_at: Fri, 29 Sep 2023 17:49:46.081410000 UTC +00:00,
  updated_at: Fri, 29 Sep 2023 17:49:46.081410000 UTC +00:00>,
 #<AccountOwner:0x000000010582a5b8
  id: 3,
  name: "Louis",
  address: "Golf Drive",
  created_at: Fri, 29 Sep 2023 17:50:15.130621000 UTC +00:00,
  updated_at: Fri, 29 Sep 2023 17:50:15.130621000 UTC +00:00>] 