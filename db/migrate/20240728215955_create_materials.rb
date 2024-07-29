class CreateMaterials < ActiveRecord::Migration[7.1]
  def change
    create_table :materials do |t|
      t.string :titulo
      t.text :contenido
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
