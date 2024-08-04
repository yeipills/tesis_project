class AddRatingToCourses < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :rating, :float
  end
end
