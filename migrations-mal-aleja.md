As a developer, you are tasked with creating a new Rails application called favorite-movies to store data for your cohort. The application will start with just the structure of the database with a model called Movie. The Movie model will have an attribute for title that is a string.

rails new rails-migrations -d postgresql -T

👩‍💻 Developer Tasks
As a developer, I can add a category to the Movie model called category that is a string.
rails generate model Movie title:string 
      invoke  active_record
      create    db/migrate/20230928215445_create_movies.rb
      create    app/models/movie.rb
rails g migration AddCategorieColumn
      invoke  active_record
      create    db/migrate/20230928220052_add_categorie_column.rb
As a developer, I can add a category to the Movie model called rating that is a string.
rails g migration AddRatingColumn  
      invoke  active_record
      create    db/migrate/20230928220317_add_rating_column.rb
learnacademy@MacBook-Air rails-migrations % rails db:migrate   
As a developer, I can add a category to the Movie model called run_time that is a number.
rails g migration AddRunTimeColumn 
      invoke  active_record
      create    db/migrate/20230928220420_add_run_time_column.rb
learnacademy@MacBook-Air rails-migrations % rails db:migrate 
As a developer, I can add five entries to the database via the Rails console.
Movie.create(title: 'The Lion King', categorie: 'animated', rating:
'G', runTime: '1 hour')
saw.update(title: 'Saw', categorie: 'Horror', rating: 'R', runTime:
 '1 hour and 40 mins')
 Movie.create(title: 'Treasure Planet', categorie: 'animated', ratin
g: 'G', runTime: '1 hour and 30 mins')
 Movie.create(title: 'Se7en', categorie: 'Thriller', rating: 'R', ru
nTime: '2 hours and seven minutes')
Movie.create(title: 'Barbie', categorie: 'RomCom', rating: 'PG-13',
 runTime: '1 hour and fifty four minutes')



As a developer, I can update the run_time column to be a string.
As a developer, I can update the values of the five existing database entries to include a unit of time on the run_time column. (Example: '165 minutes' or '1 hr, 45 minutes')
ails-migrations % rails g migration change_name_categorie_column
      invoke  active_record
      create    db/migrate/20230928222200_change_name_categorie_column.rb
learnacademy@MacBook-Air rails-migrations % rails db:migrate
As a developer, I can rename the column category to be named genre.

[#<Movie:0x0000000105bd6270
  id: 2,
  title: "The Lion King",
  created_at: Thu, 28 Sep 2023 22:09:11.380987000 UTC +00:00,
  updated_at: Thu, 28 Sep 2023 22:09:11.380987000 UTC +00:00,
  genre: "animated",
  rating: "G",
  runTime: "1 hour">,
 #<Movie:0x0000000105eb1cd8
  id: 1,
  title: "Saw",
  created_at: Thu, 28 Sep 2023 22:05:30.686507000 UTC +00:00,
  updated_at: Thu, 28 Sep 2023 22:12:43.655810000 UTC +00:00,
  genre: "Horror",
  rating: "R",
  runTime: "1 hour and 40 mins">,
 #<Movie:0x0000000105eb1c38
  id: 3,
  title: "Treasure Planet",
  created_at: Thu, 28 Sep 2023 22:14:13.276220000 UTC +00:00,
  updated_at: Thu, 28 Sep 2023 22:14:13.276220000 UTC +00:00,
  genre: "animated",
  rating: "G",
  runTime: "1 hour and 30 mins">,
 #<Movie:0x0000000105eb1b98
  id: 4,
  title: "Se7en",
  created_at: Thu, 28 Sep 2023 22:15:17.105446000 UTC +00:00,
  updated_at: Thu, 28 Sep 2023 22:15:17.105446000 UTC +00:00,
  genre: "Thriller",
  rating: "R",
  runTime: "2 hours and seven minutes">,
 #<Movie:0x0000000105eb1af8
  id: 5,
  title: "Barbie",
  created_at: Thu, 28 Sep 2023 22:16:40.699729000 UTC +00:00,
  updated_at: Thu, 28 Sep 2023 22:16:40.699729000 UTC +00:00,
  genre: "RomCom",
  rating: "PG-13",
  runTime: "1 hour and fifty four minutes">] 