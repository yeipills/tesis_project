class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :nombre_completo
      t.string :email, null: false, unique: true
      t.string :user_name, null: false, unique: true
      t.string :password_digest, null: false
      t.references :role, null: false, foreign_key: true
      t.references :career, null: false, foreign_key: true

      t.timestamps
    end
  end
end
