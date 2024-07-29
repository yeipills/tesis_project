class CreateUniversities < ActiveRecord::Migration[7.1]
  def change
    create_table :universities do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
