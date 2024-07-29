class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :nombre_completo
      t.string :email
      t.string :user_name
      t.string :password_digest
      t.references :role, null: false, foreign_key: true
      t.references :career, null: true, foreign_key: true

      t.timestamps
    end
  end
end
