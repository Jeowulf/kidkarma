class AddParentRefToKids < ActiveRecord::Migration
  def change
    add_reference :kids, :parent, index: true, foreign_key: true, null: false
  end
end
