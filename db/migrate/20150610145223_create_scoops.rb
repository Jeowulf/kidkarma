class CreateScoops < ActiveRecord::Migration
  def change
    create_table :scoops do |t|
      t.string :headline, null: false
      t.string :story, null: false

      t.timestamps null: false
    end
  end
end
