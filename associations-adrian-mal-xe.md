
learnacademy@MacBook-Air-6 Desktop % rails new associations -d postgresql -T
      create  
      create  README.md
      create  Rakefile
      create  .ruby-version
      create  config.ru
      create  .gitignore
      create  .gitattributes
      create  Gemfile
         run  git init from "."
hint: Using 'master' as the name for the initial branch. This default branch name
hint: is subject to change. To configure the initial branch name to use in all
hint: of your new repositories, which will suppress this warning, call:
hint: 
hint: 	git config --global init.defaultBranch <name>
hint: 
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint: 
hint: 	git branch -m <name>
Initialized empty Git repository in /Users/learnacademy/Desktop/associations/.git/
      create  app
      create  app/assets/config/manifest.js
      create  app/assets/stylesheets/application.css
      create  app/channels/application_cable/channel.rb
      create  app/channels/application_cable/connection.rb
      create  app/controllers/application_controller.rb
      create  app/helpers/application_helper.rb
      create  app/jobs/application_job.rb
      create  app/mailers/application_mailer.rb
      create  app/models/application_record.rb
      create  app/views/layouts/application.html.erb
      create  app/views/layouts/mailer.html.erb
      create  app/views/layouts/mailer.text.erb
      create  app/assets/images
      create  app/assets/images/.keep
      create  app/controllers/concerns/.keep
      create  app/models/concerns/.keep
      create  bin
      create  bin/rails
      create  bin/rake
      create  bin/setup
      create  config
      create  config/routes.rb
      create  config/application.rb
      create  config/environment.rb
      create  config/cable.yml
      create  config/puma.rb
      create  config/storage.yml
      create  config/environments
      create  config/environments/development.rb
      create  config/environments/production.rb
      create  config/environments/test.rb
      create  config/initializers
      create  config/initializers/assets.rb
      create  config/initializers/content_security_policy.rb
      create  config/initializers/cors.rb
      create  config/initializers/filter_parameter_logging.rb
      create  config/initializers/inflections.rb
      create  config/initializers/new_framework_defaults_7_0.rb
      create  config/initializers/permissions_policy.rb
      create  config/locales
      create  config/locales/en.yml
      create  config/master.key
      append  .gitignore
      create  config/boot.rb
      create  config/database.yml
      create  db
      create  db/seeds.rb
      create  lib
      create  lib/tasks
      create  lib/tasks/.keep
      create  lib/assets
      create  lib/assets/.keep
      create  log
      create  log/.keep
      create  public
      create  public/404.html
      create  public/422.html
      create  public/500.html
      create  public/apple-touch-icon-precomposed.png
      create  public/apple-touch-icon.png
      create  public/favicon.ico
      create  public/robots.txt
      create  tmp
      create  tmp/.keep
      create  tmp/pids
      create  tmp/pids/.keep
      create  tmp/cache
      create  tmp/cache/assets
      create  vendor
      create  vendor/.keep
      create  storage
      create  storage/.keep
      create  tmp/storage
      create  tmp/storage/.keep
      remove  config/initializers/cors.rb
      remove  config/initializers/new_framework_defaults_7_0.rb
         run  bundle install
Fetching gem metadata from https://rubygems.org/...........
Resolving dependencies...
Installing stringio 3.0.8 with native extensions
Installing pg 1.5.4 with native extensions
Gem::Ext::BuildError: ERROR: Failed to build gem native extension.

    current directory: /Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/stringio-3.0.8/ext/stringio
/Users/learnacademy/.rvm/rubies/ruby-3.2.0/bin/ruby extconf.rb
creating Makefile

current directory: /Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/stringio-3.0.8/ext/stringio
make DESTDIR\= sitearchdir\=./.gem.20230929-3939-vplmxj sitelibdir\=./.gem.20230929-3939-vplmxj clean
xcrun: error: invalid active developer path (/Library/Developer/CommandLineTools), missing xcrun at:
/Library/Developer/CommandLineTools/usr/bin/xcrun

current directory: /Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/stringio-3.0.8/ext/stringio
make DESTDIR\= sitearchdir\=./.gem.20230929-3939-vplmxj sitelibdir\=./.gem.20230929-3939-vplmxj
xcrun: error: invalid active developer path (/Library/Developer/CommandLineTools), missing xcrun at:
/Library/Developer/CommandLineTools/usr/bin/xcrun

make failed, exit code 1

Gem files will remain installed in /Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/stringio-3.0.8 for
inspection.
Results logged to
/Users/learnacademy/.rvm/gems/ruby-3.2.0/extensions/arm64-darwin-21/3.2.0/stringio-3.0.8/gem_make.out

  /Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/rubygems/ext/builder.rb:119:in `run'
/Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/rubygems/ext/builder.rb:53:in `block
in make'
  /Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/rubygems/ext/builder.rb:45:in `each'
  /Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/rubygems/ext/builder.rb:45:in `make'
/Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/rubygems/ext/ext_conf_builder.rb:42:in
`build'
/Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/rubygems/ext/builder.rb:187:in
`build_extension'
/Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/rubygems/ext/builder.rb:221:in `block
in build_extensions'
  /Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/rubygems/ext/builder.rb:218:in `each'
/Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/rubygems/ext/builder.rb:218:in
`build_extensions'
/Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/rubygems/installer.rb:846:in
`build_extensions'
/Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/bundler/rubygems_gem_installer.rb:72:in
`build_extensions'
/Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/bundler/rubygems_gem_installer.rb:28:in
`install'
/Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/bundler/source/rubygems.rb:202:in
`install'
/Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/bundler/installer/gem_installer.rb:54:in
`install'
/Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/bundler/installer/gem_installer.rb:16:in
`install_from_spec'
/Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/bundler/installer/parallel_installer.rb:156:in
`do_install'
/Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/bundler/installer/parallel_installer.rb:147:in
`block in worker_pool'
  /Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/bundler/worker.rb:62:in `apply_func'
/Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/bundler/worker.rb:57:in `block in
process_queue'
  /Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/bundler/worker.rb:54:in `loop'
/Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/bundler/worker.rb:54:in
`process_queue'
/Users/learnacademy/.rvm/rubies/ruby-3.2.0/lib/ruby/site_ruby/3.2.0/bundler/worker.rb:90:in `block (2
levels) in create_threads'

An error occurred while installing stringio (3.0.8), and Bundler cannot continue.

In Gemfile:
  debug was resolved to 1.8.0, which depends on
    irb was resolved to 1.8.1, which depends on
      rdoc was resolved to 6.5.0, which depends on
        psych was resolved to 5.1.0, which depends on
          stringio
         run  bundle binstubs bundler
Resolving dependencies...
       rails  importmap:install
Resolving dependencies...
Add Importmap include tags in application layout
      insert  app/views/layouts/application.html.erb
Create application.js module as entrypoint
      create  app/javascript/application.js
Use vendor/javascript for downloaded pins
      create  vendor/javascript
      create  vendor/javascript/.keep
Ensure JavaScript files are in the Sprocket manifest
      append  app/assets/config/manifest.js
Configure importmap paths in config/importmap.rb
      create  config/importmap.rb
Copying binstub
      create  bin/importmap
       rails  turbo:install stimulus:install
Import Turbo
      append  app/javascript/application.js
Pin Turbo
      append  config/importmap.rb
Run turbo:install:redis to switch on Redis and use it in development for turbo streams
Create controllers directory
      create  app/javascript/controllers
      create  app/javascript/controllers/index.js
      create  app/javascript/controllers/application.js
      create  app/javascript/controllers/hello_controller.js
Import Stimulus controllers
      append  app/javascript/application.js
Pin Stimulus
Appending: pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true"
      append  config/importmap.rb
Appending: pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
      append  config/importmap.rb
Pin all controllers
Appending: pin_all_from "app/javascript/controllers", under: "controllers"
      append  config/importmap.rb
learnacademy@MacBook-Air-6 Desktop % cd associations        
learnacademy@MacBook-Air-6 associations % rails db:create
Created database 'associations_development'
Created database 'associations_test'
learnacademy@MacBook-Air-6 associations % rails generate model Person first_name:string last_name:string address:string
      invoke  active_record
      create    db/migrate/20230929174329_create_people.rb
      create    app/models/person.rb
learnacademy@MacBook-Air-6 associations % rails db:migrate
== 20230929174329 CreatePeople: migrating =====================================
-- create_table(:people)
   -> 0.0060s
== 20230929174329 CreatePeople: migrated (0.0061s) ============================

learnacademy@MacBook-Air-6 associations % code .
learnacademy@MacBook-Air-6 associations % rails c
Loading development environment (Rails 7.0.8)
3.2.0 :001 > Person.create(firstname:'bog', lastname:'gremlin', address:'1122 boogey woogey avenue')
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.8/lib/active_model/attribute_assignment.rb:51:in `_assign_attribute': unknown attribute 'firstname' for Person. (ActiveModel::UnknownAttributeError)

          raise UnknownAttributeError.new(self, k.to_s)
          ^^^^^
3.2.0 :002 > Person.create(first_name:'bog', last_name:'gremlin', address:'1122 boogey woogey avenue')
  TRANSACTION (0.5ms)  BEGIN
  Person Create (4.4ms)  INSERT INTO "people" ("first_name", "last_name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "bog"], ["last_name", "gremlin"], ["address", "1122 boogey woogey avenue"], ["created_at", "2023-09-29 17:47:34.731619"], ["updated_at", "2023-09-29 17:47:34.731619"]]
  TRANSACTION (1.1ms)  COMMIT
 => 
#<Person:0x0000000109fbcb38
 id: 1,
 first_name: "bog",
 last_name: "gremlin",
 address: "1122 boogey woogey avenue",
 created_at: Fri, 29 Sep 2023 17:47:34.731619000 UTC +00:00,
 updated_at: Fri, 29 Sep 2023 17:47:34.731619000 UTC +00:00> 
3.2.0 :003 > Person.create(first_name:'Tony', last_name:'Stark', address:'Hollywood Boulvard')
  TRANSACTION (0.2ms)  BEGIN
  Person Create (0.4ms)  INSERT INTO "people" ("first_name", "last_name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "Tony"], ["last_name", "Stark"], ["address", "Hollywood Boulvard"], ["created_at", "2023-09-29 17:49:10.664580"], ["updated_at", "2023-09-29 17:49:10.664580"]]
  TRANSACTION (0.2ms)  COMMIT
 => 
#<Person:0x000000010a937320
 id: 2,
 first_name: "Tony",
 last_name: "Stark",
 address: "Hollywood Boulvard",
 created_at: Fri, 29 Sep 2023 17:49:10.664580000 UTC +00:00,
 updated_at: Fri, 29 Sep 2023 17:49:10.664580000 UTC +00:00> 
3.2.0 :004 > Person.create(first_name: 'jig', last_name:'saw', address:'unkown facility')
  TRANSACTION (0.7ms)  BEGIN
  Person Create (0.7ms)  INSERT INTO "people" ("first_name", "last_name", "address", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["first_name", "jig"], ["last_name", "saw"], ["address", "unkown facility"], ["created_at", "2023-09-29 17:50:32.406605"], ["updated_at", "2023-09-29 17:50:32.406605"]]
  TRANSACTION (0.5ms)  COMMIT
 => 
#<Person:0x000000010ab34c40
 id: 3,
 first_name: "jig",
 last_name: "saw",
 address: "unkown facility",
 created_at: Fri, 29 Sep 2023 17:50:32.406605000 UTC +00:00,
 updated_at: Fri, 29 Sep 2023 17:50:32.406605000 UTC +00:00> 
3.2.0 :005 > exit
learnacademy@MacBook-Air-6 associations % rails g model CreditCard number:integer expiration_string:string person_id:integer
      invoke  active_record
      create    db/migrate/20230929175410_create_credit_cards.rb
      create    app/models/credit_card.rb
learnacademy@MacBook-Air-6 associations % rails db:migrate
== 20230929175410 CreateCreditCards: migrating ================================
-- create_table(:credit_cards)
   -> 0.0091s
== 20230929175410 CreateCreditCards: migrated (0.0092s) =======================

learnacademy@MacBook-Air-6 associations % rails c
Loading development environment (Rails 7.0.8)
3.2.0 :001 > bog = Person.first
  Person Load (0.9ms)  SELECT "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => 
#<Person:0x0000000106a594c8
... 
3.2.0 :002 > bog.creditcards.create(number: '23', expiration_date: '04/25', person_id:1)
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.8/lib/active_model/attribute_methods.rb:450:in `method_missing': undefined method `creditcards' for #<Person id: 1, first_name: "bog", last_name: "gremlin", address: "1122 boogey woogey avenue", created_at: "2023-09-29 17:47:34.731619000 +0000", updated_at: "2023-09-29 17:47:34.731619000 +0000"> (NoMethodError)
3.2.0 :003 > bog.credit_cards.create(number: '23', expiration_date: '04/25', person_id:1)
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.8/lib/active_model/attribute_methods.rb:450:in `method_missing': undefined method `credit_cards' for #<Person id: 1, first_name: "bog", last_name: "gremlin", address: "1122 boogey woogey avenue", created_at: "2023-09-29 17:47:34.731619000 +0000", updated_at: "2023-09-29 17:47:34.731619000 +0000"> (NoMethodError)
3.2.0 :004 > bog.credit_cards.create(number: 23, expiration_date: '04/25', person_id:1)
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.8/lib/active_model/attribute_methods.rb:450:in `method_missing': undefined method `credit_cards' for #<Person id: 1, first_name: "bog", last_name: "gremlin", address: "1122 boogey woogey avenue", created_at: "2023-09-29 17:47:34.731619000 +0000", updated_at: "2023-09-29 17:47:34.731619000 +0000"> (NoMethodError)
3.2.0 :005 > bog.credit_cards.create(number: 23, expiration_string: '04/25', person_id:1)
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.8/lib/active_model/attribute_methods.rb:450:in `method_missing': undefined method `credit_cards' for #<Person id: 1, first_name: "bog", last_name: "gremlin", address: "1122 boogey woogey avenue", created_at: "2023-09-29 17:47:34.731619000 +0000", updated_at: "2023-09-29 17:47:34.731619000 +0000"> (NoMethodError)
3.2.0 :006 > bog.credit_cards.create(number: 23, expiration_string: '04/25', person_id:1)
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.8/lib/active_model/attribute_methods.rb:450:in `method_missing': undefined method `credit_cards' for #<Person id: 1, first_name: "bog", last_name: "gremlin", address: "1122 boogey woogey avenue", created_at: "2023-09-29 17:47:34.731619000 +0000", updated_at: "2023-09-29 17:47:34.731619000 +0000"> (NoMethodError)
3.2.0 :007 > bog.credit_card.create(number: 23, expiration_string: '04/25', person_id:1)
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.8/lib/active_model/attribute_methods.rb:450:in `method_missing': undefined method `credit_card' for #<Person id: 1, first_name: "bog", last_name: "gremlin", address: "1122 boogey woogey avenue", created_at: "2023-09-29 17:47:34.731619000 +0000", updated_at: "2023-09-29 17:47:34.731619000 +0000"> (NoMethodError)
3.2.0 :008 > bog = Person.find('bog')
  Person Load (5.6ms)  SELECT "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", nil], ["LIMIT", 1]]
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activerecord-7.0.8/lib/active_record/core.rb:284:in `find': Couldn't find Person with 'id'=bog (ActiveRecord::RecordNotFound)
3.2.0 :009 > bog.credit_card.create(number: 23, expiration_string: '04/25', person_id:1)
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.8/lib/active_model/attribute_methods.rb:450:in `method_missing': undefined method `credit_card' for #<Person id: 1, first_name: "bog", last_name: "gremlin", address: "1122 boogey woogey avenue", created_at: "2023-09-29 17:47:34.731619000 +0000", updated_at: "2023-09-29 17:47:34.731619000 +0000"> (NoMethodError)
3.2.0 :010 > bog
 => 
#<Person:0x0000000106a594c8
 id: 1,
 first_name: "bog",
 last_name: "gremlin",
 address: "1122 boogey woogey avenue",
 created_at: Fri, 29 Sep 2023 17:47:34.731619000 UTC +00:00,
 updated_at: Fri, 29 Sep 2023 17:47:34.731619000 UTC +00:00> 
3.2.0 :011 > bog.credit_card.create(number: 23, expiration_string: '04/25')
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.8/lib/active_model/attribute_methods.rb:450:in `method_missing': undefined method `credit_card' for #<Person id: 1, first_name: "bog", last_name: "gremlin", address: "1122 boogey woogey avenue", created_at: "2023-09-29 17:47:34.731619000 +0000", updated_at: "2023-09-29 17:47:34.731619000 +0000"> (NoMethodError)
3.2.0 :012 > bog.credit_cards.create(number: 23, expiration_string: '04/25')
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.8/lib/active_model/attribute_methods.rb:450:in `method_missing': undefined method `credit_cards' for #<Person id: 1, first_name: "bog", last_name: "gremlin", address: "1122 boogey woogey avenue", created_at: "2023-09-29 17:47:34.731619000 +0000", updated_at: "2023-09-29 17:47:34.731619000 +0000"> (NoMethodError)
3.2.0 :013 > CreditCard.all()
  CreditCard Load (12.5ms)  SELECT "credit_cards".* FROM "credit_cards"
 => [] 
3.2.0 :014 > Person.all()
  Person Load (1.1ms)  SELECT "people".* FROM "people"
 => 
[#<Person:0x0000000106a901f8
  id: 1,
  first_name: "bog",
  last_name: "gremlin",
  address: "1122 boogey woogey avenue",
  created_at: Fri, 29 Sep 2023 17:47:34.731619000 UTC +00:00,
  updated_at: Fri, 29 Sep 2023 17:47:34.731619000 UTC +00:00>,
 #<Person:0x000000010983fdd8
  id: 2,
  first_name: "Tony",
  last_name: "Stark",
  address: "Hollywood Boulvard",
  created_at: Fri, 29 Sep 2023 17:49:10.664580000 UTC +00:00,
  updated_at: Fri, 29 Sep 2023 17:49:10.664580000 UTC +00:00>,
 #<Person:0x000000010983fd38
  id: 3,
  first_name: "jig",
  last_name: "saw",
  address: "unkown facility",
  created_at: Fri, 29 Sep 2023 17:50:32.406605000 UTC +00:00,
  updated_at: Fri, 29 Sep 2023 17:50:32.406605000 UTC +00:00>] 
3.2.0 :015 > bog.credit_cards
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.8/lib/active_model/attribute_methods.rb:450:in `method_missing': undefined method `credit_cards' for #<Person id: 1, first_name: "bog", last_name: "gremlin", address: "1122 boogey woogey avenue", created_at: "2023-09-29 17:47:34.731619000 +0000", updated_at: "2023-09-29 17:47:34.731619000 +0000"> (NoMethodError)
3.2.0 :016 > exit
learnacademy@MacBook-Air-6 associations % rails c
Loading development environment (Rails 7.0.8)
3.2.0 :001 > bog
(irb):1:in `<main>': undefined local variable or method `bog' for main:Object (NameError)

bog
^^^
3.2.0 :002 > bog = Person.first(1)
  Person Load (1.0ms)  SELECT "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => 
[#<Person:0x000000010596cde0
... 
3.2.0 :003 > bog = Person.first
  Person Load (0.5ms)  SELECT "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => 
#<Person:0x0000000105ca3fe0
... 
3.2.0 :004 > bog.credit_cards.create(number:23, expiration_string:'04/25')
  TRANSACTION (0.1ms)  BEGIN
  CreditCard Create (5.1ms)  INSERT INTO "credit_cards" ("number", "expiration_string", "person_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", 23], ["expiration_string", "04/25"], ["person_id", 1], ["created_at", "2023-09-29 18:33:30.284566"], ["updated_at", "2023-09-29 18:33:30.284566"]]
  TRANSACTION (0.6ms)  COMMIT
 => 
#<CreditCard:0x0000000106080500
 id: 1,
 number: 23,
 expiration_string: "04/25",
 person_id: 1,
 created_at: Fri, 29 Sep 2023 18:33:30.284566000 UTC +00:00,
 updated_at: Fri, 29 Sep 2023 18:33:30.284566000 UTC +00:00> 
3.2.0 :005 > tony = Person.second
  Person Load (0.5ms)  SELECT "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 1]]
 => 
#<Person:0x0000000105ca26e0
... 
3.2.0 :006 > tony.credit_cards.create(number:123, expiration_string:'never')
  TRANSACTION (0.3ms)  BEGIN
  CreditCard Create (0.6ms)  INSERT INTO "credit_cards" ("number", "expiration_string", "person_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", 123], ["expiration_string", "never"], ["person_id", 2], ["created_at", "2023-09-29 18:42:48.000717"], ["updated_at", "2023-09-29 18:42:48.000717"]]
  TRANSACTION (0.8ms)  COMMIT
 => 
#<CreditCard:0x0000000106407e58
 id: 2,
 number: 123,
 expiration_string: "never",
 person_id: 2,
 created_at: Fri, 29 Sep 2023 18:42:48.000717000 UTC +00:00,
 updated_at: Fri, 29 Sep 2023 18:42:48.000717000 UTC +00:00> 
3.2.0 :007 > jigsaw = Person.third
  Person Load (0.4ms)  SELECT "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 2]]
 => 
#<Person:0x00000001058aebb0
... 
3.2.0 :008 > jigsaw.credit_cards.create(number:22292, expiration_string:'10/23')
  TRANSACTION (0.4ms)  BEGIN
  CreditCard Create (0.6ms)  INSERT INTO "credit_cards" ("number", "expiration_string", "person_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", 22292], ["expiration_string", "10/23"], ["person_id", 3], ["created_at", "2023-09-29 18:46:30.071022"], ["updated_at", "2023-09-29 18:46:30.071022"]]
  TRANSACTION (0.6ms)  COMMIT
 => 
#<CreditCard:0x000000010640c958
 id: 3,
 number: 22292,
 expiration_string: "10/23",
 person_id: 3,
 created_at: Fri, 29 Sep 2023 18:46:30.071022000 UTC +00:00,
 updated_at: Fri, 29 Sep 2023 18:46:30.071022000 UTC +00:00> 
3.2.0 :009 > jigsaw.credit_cards.create(number: 12334, expiration_date:'10/24')
/Users/learnacademy/.rvm/gems/ruby-3.2.0/gems/activemodel-7.0.8/lib/active_model/attribute_assignment.rb:51:in `_assign_attribute': unknown attribute 'expiration_date' for CreditCard. (ActiveModel::UnknownAttributeError)

          raise UnknownAttributeError.new(self, k.to_s)
          ^^^^^
3.2.0 :010 > jigsaw.credit_cards.create(number: 12334, expiration_string:'10/24')
  TRANSACTION (0.2ms)  BEGIN
  CreditCard Create (0.4ms)  INSERT INTO "credit_cards" ("number", "expiration_string", "person_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", 12334], ["expiration_string", "10/24"], ["person_id", 3], ["created_at", "2023-09-29 18:48:39.080717"], ["updated_at", "2023-09-29 18:48:39.080717"]]
  TRANSACTION (0.9ms)  COMMIT
 => 
#<CreditCard:0x0000000111857818
 id: 4,
 number: 12334,
 expiration_string: "10/24",
 person_id: 3,
 created_at: Fri, 29 Sep 2023 18:48:39.080717000 UTC +00:00,
 updated_at: Fri, 29 Sep 2023 18:48:39.080717000 UTC +00:00> 
3.2.0 :011 > jigsaw.credit_cards.create(number: 666, expiration_string:'10/25')
  TRANSACTION (0.2ms)  BEGIN
  CreditCard Create (0.4ms)  INSERT INTO "credit_cards" ("number", "expiration_string", "person_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["number", 666], ["expiration_string", "10/25"], ["person_id", 3], ["created_at", "2023-09-29 18:49:48.407437"], ["updated_at", "2023-09-29 18:49:48.407437"]]
  TRANSACTION (0.5ms)  COMMIT
 => 
#<CreditCard:0x00000001118fe118
 id: 5,
 number: 666,
 expiration_string: "10/25",
 person_id: 3,
 created_at: Fri, 29 Sep 2023 18:49:48.407437000 UTC +00:00,
 updated_at: Fri, 29 Sep 2023 18:49:48.407437000 UTC +00:00> 
3.2.0 :012 > exit
learnacademy@MacBook-Air-6 associations % rails g migration AddColumnToCreditCard 
      invoke  active_record
      create    db/migrate/20230929185244_add_column_to_credit_card.rb
learnacademy@MacBook-Air-6 associations % rails db:migrate
== 20230929185244 AddColumnToCreditCard: migrating ============================
== 20230929185244 AddColumnToCreditCard: migrated (0.0000s) ===================

learnacademy@MacBook-Air-6 associations % code .
learnacademy@MacBook-Air-6 associations % rails db:migrate
learnacademy@MacBook-Air-6 associations % rails c
Loading development environment (Rails 7.0.8)
3.2.0 :001 > credit_cards.all
(irb):1:in `<main>': undefined local variable or method `credit_cards' for main:Object (NameError)

credit_cards.all
^^^^^^^^^^^^
3.2.0 :002 > CreditCards.all
(irb):2:in `<main>': uninitialized constant CreditCards (NameError)

CreditCards.all
^^^^^^^^^^^
3.2.0 :003 > CreditCard.all
  CreditCard Load (0.4ms)  SELECT "credit_cards".* FROM "credit_cards"
 => 
[#<CreditCard:0x00000001059b0310
  id: 1,
  number: 23,
  expiration_string: "04/25",
  person_id: 1,
  created_at: Fri, 29 Sep 2023 18:33:30.284566000 UTC +00:00,
  updated_at: Fri, 29 Sep 2023 18:33:30.284566000 UTC +00:00>,
 #<CreditCard:0x000000010510d988
  id: 2,
  number: 123,
  expiration_string: "never",
  person_id: 2,
  created_at: Fri, 29 Sep 2023 18:42:48.000717000 UTC +00:00,
  updated_at: Fri, 29 Sep 2023 18:42:48.000717000 UTC +00:00>,
 #<CreditCard:0x000000010510d7a8
  id: 3,
  number: 22292,
  expiration_string: "10/23",
  person_id: 3,
  created_at: Fri, 29 Sep 2023 18:46:30.071022000 UTC +00:00,
  updated_at: Fri, 29 Sep 2023 18:46:30.071022000 UTC +00:00>,
 #<CreditCard:0x000000010510d708
  id: 4,
  number: 12334,
  expiration_string: "10/24",
  person_id: 3,
  created_at: Fri, 29 Sep 2023 18:48:39.080717000 UTC +00:00,
  updated_at: Fri, 29 Sep 2023 18:48:39.080717000 UTC +00:00>,
 #<CreditCard:0x000000010510d5c8
  id: 5,
  number: 666,
  expiration_string: "10/25",
  person_id: 3,
  created_at: Fri, 29 Sep 2023 18:49:48.407437000 UTC +00:00,
  updated_at: Fri, 29 Sep 2023 18:49:48.407437000 UTC +00:00>] 
3.2.0 :004 > exit
learnacademy@MacBook-Air-6 associations % 

class CreditCard < ApplicationRecord
    belongs_to :person
end

class Person < ApplicationRecord
    has_many :credit_cards
end


class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :address

      t.timestamps
    end
  end
end

class CreateCreditCards < ActiveRecord::Migration[7.0]
  def change
    create_table :credit_cards do |t|
      t.integer :number
      t.string :expiration_string
      t.integer :person_id

      t.timestamps
    end
  end
end

class AddColumnToCreditCard < ActiveRecord::Migration[7.0]
  def change
    add_column :credit_cards, :credit_limit, :integer

    def 
      credit_cards_limt(:credit_cards)
    end
  end
end

  enable_extension "plpgsql"

  create_table "credit_cards", force: :cascade do |t|
    t.integer "number"
    t.string "expiration_string"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end


