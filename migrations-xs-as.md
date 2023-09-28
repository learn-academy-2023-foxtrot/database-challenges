<!-- 🍿 Challenge: Favorite Movies

As a developer, you are tasked with creating a new Rails application called favorite-movies to store data for your cohort. 

The application will start with just the structure of the database with a model called Movie. The Movie model will have an attribute for title that is a string.

👩‍💻 Developer Tasks
As a developer, I can add a category to the Movie model called category that is a string.

rails generate model Movie title:string rating:string run_time:integer 

As a developer, I can add a category to the Movie model called rating that is a string.

As a developer, I can add a category to the Movie model called run_time that is a number.

class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.integer :run_time

      t.timestamps
    end
  end
end

As a developer, I can add five entries to the database via the Rails console.

Movie.create(title: 'Iron Man 1', rating: '8.5', run_time: 120)

Movie.create(title: 'Iron Man 2', rating: '8', run_time: 145)

Movie.create(title: 'Iron Man 3', rating: '7.5', run_time: 135)

Movie.create(title: 'Italian Job', rating: '10', run_time: 90 )

Movie.create(title: 'Spirited Away', rating: '9', run_time: 121)

As a developer, I can update the run_time column to be a string.

im1 = Movie.find(1)
im2 = Movie.find(2)
im3 = Movie.find(3)
ij = Movie.find(4)
sa = Movie.find(5)

 Movie.update(run_time: String)

 [#<Movie:0x000000011835fa20
  id: 3,
  title: "Iron Man 3",
  rating: "7.5",
  run_time: 0,
  created_at: Thu, 28 Sep 2023 22:26:33.054406000 UTC +00:00,
  updated_at: Thu, 28 Sep 2023 22:46:41.148239000 UTC +00:00>,
 #<Movie:0x000000011835f8e0
  id: 4,
  title: "Italian Job",
  rating: "10",
  run_time: 0,
  created_at: Thu, 28 Sep 2023 22:26:42.847049000 UTC +00:00,
  updated_at: Thu, 28 Sep 2023 22:46:41.149610000 UTC +00:00>,
 #<Movie:0x000000011835f7a0
  id: 5,
  title: "Spirited Away",
  rating: "9",
  run_time: 0,
  created_at: Thu, 28 Sep 2023 22:26:51.675873000 UTC +00:00,
  updated_at: Thu, 28 Sep 2023 22:46:41.150503000 UTC +00:00>,
 #<Movie:0x000000011835f660
  id: 2,
  title: "Iron Man 2",
  rating: "8",
  run_time: 0,
  created_at: Thu, 28 Sep 2023 22:26:23.775625000 UTC +00:00,
  updated_at: Thu, 28 Sep 2023 22:46:41.151457000 UTC +00:00>,
 #<Movie:0x000000011835f520
  id: 1,
  title: "Iron Man 1",
  rating: "8.5",
  run_time: 0,
  created_at: Thu, 28 Sep 2023 22:25:53.502914000 UTC +00:00,
  updated_at: Thu, 28 Sep 2023 22:46:41.152574000 UTC +00:00>] 
3.2.0 :005 > Movie.update(run_time:to_s)



As a developer, I can update the values of the five existing database entries to include a unit of time on the run_time column. (Example: '165 minutes' or '1 hr, 45 minutes')
As a developer, I can rename the column category to be named genre. -->
