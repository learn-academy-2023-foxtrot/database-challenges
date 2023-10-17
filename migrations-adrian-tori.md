class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title

      t.timestamps
    end
  end
end

class AddCategoryColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :favorite_movie, :category, :string
  end
end
