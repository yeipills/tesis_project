class CreateCareers < ActiveRecord::Migration[7.1]
  def change
    create_table :careers do |t|
      t.string :nombre
      t.references :university, null: false, foreign_key: true

      t.timestamps
    end
  end
end
