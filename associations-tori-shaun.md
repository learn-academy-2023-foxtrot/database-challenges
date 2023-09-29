Creating our account owners:
```sql

AccountOwner.create(name: 'John Smith', address: '459 Lincoln St.
')
  TRANSACTION (0.3ms)  BEGIN
  AccountOwner Create (3.9ms)  INSERT INTO "account_owners" ("name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "John Smith"], ["address", "459 Lincoln St."], ["created_at", "2023-09-29 17:55:09.083971"], ["updated_at", "2023-09-29 17:55:09.083971"]]
  TRANSACTION (1.2ms)  COMMIT
=> 
#<AccountOwner:0x0000000115d3e1c0
 id: 1,
 name: "John Smith",
 address: "459 Lincoln St.",
 created_at: Fri, 29 Sep 2023 17:55:09.083971000 UTC +00:00,
 updated_at: Fri, 29 Sep 2023 17:55:09.083971000 UTC +00:00>
irb(main):003> AccountOwner.create(name: 'Susan Sarandon', address: '123 Cherry 
Ln.')
  TRANSACTION (0.3ms)  BEGIN
  AccountOwner Create (0.8ms)  INSERT INTO "account_owners" ("name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "Susan Sarandon"], ["address", "123 Cherry Ln."], ["created_at", "2023-09-29 17:56:23.641378"], ["updated_at", "2023-09-29 17:56:23.641378"]]
  TRANSACTION (0.8ms)  COMMIT
=> 
#<AccountOwner:0x000000011631d708
 id: 2,
 name: "Susan Sarandon",
 address: "123 Cherry Ln.",
 created_at: Fri, 29 Sep 2023 17:56:23.641378000 UTC +00:00,
 updated_at: Fri, 29 Sep 2023 17:56:23.641378000 UTC +00:00>
irb(main):004> AccountOwner.create(name: 'Charles Darwin', address: '632 Avenida
 del Presidente')
  TRANSACTION (0.4ms)  BEGIN
  AccountOwner Create (1.0ms)  INSERT INTO "account_owners" ("name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "Charles Darwin"], ["address", "632 Avenida del Presidente"], ["created_at", "2023-09-29 17:57:46.651717"], ["updated_at", "2023-09-29 17:57:46.651717"]]
  TRANSACTION (0.5ms)  COMMIT
=> 
#<AccountOwner:0x00000001164fc308
 id: 3,
 name: "Charles Darwin",
 address: "632 Avenida del Presidente",
 created_at: Fri, 29 Sep 2023 17:57:46.651717000 UTC +00:00,
 updated_at: Fri, 29 Sep 2023 17:57:46.651717000 UTC +00:00>
```

All the ccount names:

```sql

irb(main):005> AccountOwner.all
  AccountOwner Load (2.6ms)  SELECT "account_owners".* FROM "account_owners"
=> 
[#<AccountOwner:0x00000001160db698
  id: 1,
  name: "John Smith",
  address: "459 Lincoln St.",
  created_at: Fri, 29 Sep 2023 17:55:09.083971000 UTC +00:00,
  updated_at: Fri, 29 Sep 2023 17:55:09.083971000 UTC +00:00>,
 #<AccountOwner:0x00000001160db558
  id: 2,
  name: "Susan Sarandon",
  address: "123 Cherry Ln.",
  created_at: Fri, 29 Sep 2023 17:56:23.641378000 UTC +00:00,
  updated_at: Fri, 29 Sep 2023 17:56:23.641378000 UTC +00:00>,
 #<AccountOwner:0x00000001160db418
  id: 3,
  name: "Charles Darwin",
  address: "632 Avenida del Presidente",
  created_at: Fri, 29 Sep 2023 17:57:46.651717000 UTC +00:00,
  updated_at: Fri, 29 Sep 2023 17:57:46.651717000 UTC +00:00>]
  ```

Error we got because we didn't exit the rails console affter changing or models pages to has_many and belongs_to
```sql

#<AccountOwner:0x00000001162bf658
 id: 1,
 name: "John Smith",
 address: "459 Lincoln St.",
 created_at: Fri, 29 Sep 2023 17:55:09.083971000 UTC +00:00,
 updated_at: Fri, 29 Sep 2023 17:55:09.083971000 UTC +00:00>
irb(main):007> john = AccountOwner.find(1)
  AccountOwner Load (1.3ms)  SELECT "account_owners".* FROM "account_owners" WHERE "account_owners"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
=> 
#<AccountOwner:0x00000001160d2a98
...
irb(main):008> john.CreditCard.create(credit_card_number: '1234567891012131', ex
p_date: '01/2028')
/Users/shaunfitzgarald/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activemodel-7.0.8/lib/active_model/attribute_methods.rb:450:in `method_missing': undefined method `CreditCard' for #<AccountOwner id: 1, name: "John Smith", address: "459 Lincoln St.", created_at: "2023-09-29 17:55:09.083971000 +0000", updated_at: "2023-09-29 17:55:09.083971000 +0000"> (NoMethodError)
irb(main):009> john.CreditCards.create(credit_card_number: '1234567891012131', e
xp_date: '01/2028')
/Users/shaunfitzgarald/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activemodel-7.0.8/lib/active_model/attribute_methods.rb:450:in `method_missing': undefined method `CreditCards' for #<AccountOwner id: 1, name: "John Smith", address: "459 Lincoln St.", created_at: "2023-09-29 17:55:09.083971000 +0000", updated_at: "2023-09-29 17:55:09.083971000 +0000"> (NoMethodError)
irb(main):010> john.credit_cards.create(credit_card_number: '1234567891012131', 
exp_date: '01/2028')
/Users/shaunfitzgarald/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activemodel-7.0.8/lib/active_model/attribute_methods.rb:450:in `method_missing': undefined method `credit_cards' for #<AccountOwner id: 1, name: "John Smith", address: "459 Lincoln St.", created_at: "2023-09-29 17:55:09.083971000 +0000", updated_at: "2023-09-29 17:55:09.083971000 +0000"> (NoMethodError)
irb(main):011> john.credit_card.create(credit_card_number: '1234567891012131', e
xp_date: '01/2028')
/Users/shaunfitzgarald/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activemodel-7.0.8/lib/active_model/attribute_methods.rb:450:in `method_missing': undefined method `credit_card' for #<AccountOwner id: 1, name: "John Smith", address: "459 Lincoln St.", created_at: "2023-09-29 17:55:09.083971000 +0000", updated_at: "2023-09-29 17:55:09.083971000 +0000"> (NoMethodError)
irb(main):012> john.credit_cards.create(credit_card_number: '1234567891012131',e
xp_date: '01/2028')
/Users/shaunfitzgarald/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activemodel-7.0.8/lib/active_model/attribute_methods.rb:450:in `method_missing': undefined method `credit_cards' for #<AccountOwner id: 1, name: "John Smith", address: "459 Lincoln St.", created_at: "2023-09-29 17:55:09.083971000 +0000", updated_at: "2023-09-29 17:55:09.083971000 +0000"> (NoMethodError)
```

Finished up the assignment to associate both tables together:

```sql

➜  associations git:(main) ✗ rails console
Loading development environment (Rails 7.0.8)
irb(main):001> john = AccountOwner.find(1)
  AccountOwner Load (0.8ms)  SELECT "account_owners".* FROM "account_owners" WHERE "account_owners"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
=> 
#<AccountOwner:0x000000010798f4b0
...
irb(main):002> john.credit_cards.create(credit_card_number: '1234567891012131',e
xp_date: '01/2028')
  TRANSACTION (0.7ms)  BEGIN
  CreditCard Create (2.7ms)  INSERT INTO "credit_cards" ("credit_card_number", "exp_date", "account_owner_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["credit_card_number", "1234567891012131"], ["exp_date", "01/2028"], ["account_owner_id", 1], ["created_at", "2023-09-29 18:30:34.510832"], ["updated_at", "2023-09-29 18:30:34.510832"]]
  TRANSACTION (0.4ms)  COMMIT
=> 
#<CreditCard:0x0000000108349d20
 id: 1,
 credit_card_number: "1234567891012131",
 exp_date: "01/2028",
 account_owner_id: 1,
 created_at: Fri, 29 Sep 2023 18:30:34.510832000 UTC +00:00,
 updated_at: Fri, 29 Sep 2023 18:30:34.510832000 UTC +00:00>
irb(main):003> john.credit_cards.create(credit_card_number: '1235867364848951',e
xp_date: '01/2029')
  TRANSACTION (6.6ms)  BEGIN
  CreditCard Create (8.2ms)  INSERT INTO "credit_cards" ("credit_card_number", "exp_date", "account_owner_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["credit_card_number", "1235867364848951"], ["exp_date", "01/2029"], ["account_owner_id", 1], ["created_at", "2023-09-29 18:34:37.354647"], ["updated_at", "2023-09-29 18:34:37.354647"]]
  TRANSACTION (0.6ms)  COMMIT
=> 
#<CreditCard:0x000000010913ac90
 id: 2,
 credit_card_number: "1235867364848951",
 exp_date: "01/2029",
 account_owner_id: 1,
 created_at: Fri, 29 Sep 2023 18:34:37.354647000 UTC +00:00,
 updated_at: Fri, 29 Sep 2023 18:34:37.354647000 UTC +00:00>
irb(main):004> john.credit_cards.create(credit_card_number: '1747474747484271',e
xp_date: '07/2030')
  TRANSACTION (0.2ms)  BEGIN
  CreditCard Create (0.7ms)  INSERT INTO "credit_cards" ("credit_card_number", "exp_date", "account_owner_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["credit_card_number", "1747474747484271"], ["exp_date", "07/2030"], ["account_owner_id", 1], ["created_at", "2023-09-29 18:35:12.896627"], ["updated_at", "2023-09-29 18:35:12.896627"]]
  TRANSACTION (0.4ms)  COMMIT
=> 
#<CreditCard:0x0000000107726548
 id: 3,
 credit_card_number: "1747474747484271",
 exp_date: "07/2030",
 account_owner_id: 1,
 created_at: Fri, 29 Sep 2023 18:35:12.896627000 UTC +00:00,
 updated_at: Fri, 29 Sep 2023 18:35:12.896627000 UTC +00:00>
irb(main):005> susan=AccountOwner.find(2)
  AccountOwner Load (2.3ms)  SELECT "account_owners".* FROM "account_owners" WHERE "account_owners"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
=> 
#<AccountOwner:0x0000000109171ce0
...
irb(main):006> susan.credit_cards.create(credit_card_number: '578392018',exp_dat
e: '04/2024')
  TRANSACTION (0.5ms)  BEGIN
  CreditCard Create (1.1ms)  INSERT INTO "credit_cards" ("credit_card_number", "exp_date", "account_owner_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["credit_card_number", "578392018"], ["exp_date", "04/2024"], ["account_owner_id", 2], ["created_at", "2023-09-29 18:36:39.504292"], ["updated_at", "2023-09-29 18:36:39.504292"]]
  TRANSACTION (0.5ms)  COMMIT
=> 
#<CreditCard:0x0000000108f1bf40
 id: 4,
 credit_card_number: "578392018",
 exp_date: "04/2024",
 account_owner_id: 2,
 created_at: Fri, 29 Sep 2023 18:36:39.504292000 UTC +00:00,
 updated_at: Fri, 29 Sep 2023 18:36:39.504292000 UTC +00:00>
irb(main):007> charles=AccountOwner.find(3)
  AccountOwner Load (1.0ms)  SELECT "account_owners".* FROM "account_owners" WHERE "account_owners"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
=> 
#<AccountOwner:0x00000001092794d0
...
irb(main):008> charles.credit_cards.create(credit_card_number: '17',exp_date: '0
1/1910')
  TRANSACTION (0.3ms)  BEGIN
  CreditCard Create (0.8ms)  INSERT INTO "credit_cards" ("credit_card_number", "exp_date", "account_owner_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["credit_card_number", "17"], ["exp_date", "01/1910"], ["account_owner_id", 3], ["created_at", "2023-09-29 18:38:48.385245"], ["updated_at", "2023-09-29 18:38:48.385245"]]
  TRANSACTION (1.1ms)  COMMIT
=> 
#<CreditCard:0x0000000107f09da0
 id: 5,
 credit_card_number: "17",
 exp_date: "01/1910",
 account_owner_id: 3,
 created_at: Fri, 29 Sep 2023 18:38:48.385245000 UTC +00:00,
 updated_at: Fri, 29 Sep 2023 18:38:48.385245000 UTC +00:00>
irb(main):009> 
```