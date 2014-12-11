class CreateAirlines < ActiveRecord::Migration
  def change
    create_table :airlines do |t|
      t.string :name
      t.string :carry_on
      t.string :pet
      t.string :food

      t.timestamps
    end
  end
end
