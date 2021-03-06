class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :remember_token
      t.timestamps null: false
    end
    add_index :parents, :email, unique: true
  end
end
