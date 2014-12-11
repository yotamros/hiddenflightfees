class RemoveColumFromAirlines < ActiveRecord::Migration
  def change
    remove_column :airlines, :pets, :string
    remove_column :airlines, :food, :string
  end
end
