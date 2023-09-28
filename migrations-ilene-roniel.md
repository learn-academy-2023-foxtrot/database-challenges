As a developer, you are tasked with creating a new Rails application called favorite-movies to store data for your cohort. The application will start with just the structure of the database with a model called Movie. The Movie model will have an attribute for title that is a string.

👩‍💻 Developer Tasks
As a developer, I can add a category to the Movie model called category that is a string.

'''
rails g migration category
rails db:migrate   
'''

As a developer, I can add a category to the Movie model called rating that is a string.

'''
rails g migration rating
rails db:migrate    
'' 

As a developer, I can add a category to the Movie model called run_time that is a number.

''
rails g migration run_time
rails db:migrate  
''  

As a developer, I can add five entries to the database via the Rails console.

'''
FavoriteMovie.create(title:'Big',category:'Drama',rating:'7.2/10',r
un_time:2)
FavoriteMovie.create(title:'Avengers: End Game',category:'Action',r
ating:'8.4/10',run_time:3)
FavoriteMovie.create(title:'Guaridans of the Galaxy: Volm. 2',categ
ory:'Action',rating:'7.6/10',run_time:2)
FavoriteMovie.create(title:'Trading Places',category:'Comedy',ratin
g:'7.5/10',run_time:2)
'';


As a developer, I can update the run_time column to be a string.


As a developer, I can update the values of the five existing database entries to include a unit of time on the run_time column. (Example: '165 minutes' or '1 hr, 45 minutes')
As a developer, I can rename the column category to be named genre.