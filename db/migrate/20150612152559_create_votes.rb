class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :color
      t.references :kid, index: true, foreign_key: true
      t.references :scoop, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
