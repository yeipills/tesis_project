class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :nombre
      t.text :descripcion
      t.references :professor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
