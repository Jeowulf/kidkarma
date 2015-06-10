class AddKidRefToScoops < ActiveRecord::Migration
  def change
    add_reference :scoops, :kid, index: true, foreign_key: true, null: false
  end
end
