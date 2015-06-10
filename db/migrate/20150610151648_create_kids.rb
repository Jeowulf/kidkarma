class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :password_dig, null: false

      t.timestamps null: false
    end
    add_index :kids, :email, unique: true
  end
end
