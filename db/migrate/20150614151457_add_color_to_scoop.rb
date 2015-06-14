class AddColorToScoop < ActiveRecord::Migration
  def change
    add_column :scoops, :color, :string, :default => 'grey'
  end
end
