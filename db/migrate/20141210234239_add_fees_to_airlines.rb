class AddFeesToAirlines < ActiveRecord::Migration
  def change
    add_column :airlines, :first_checked_bag, :string
    add_column :airlines, :second_checked_bag, :string
    add_column :airlines, :additional_bags, :string
    add_column :airlines, :overweight_bags, :string
    add_column :airlines, :oversized_bags, :string
    add_column :airlines, :ticket_change_fee_domestic_only, :string
    add_column :airlines, :booking_fee, :string
    add_column :airlines, :unaccompanied_minor, :string
    add_column :airlines, :seat_selection, :string
    add_column :airlines, :premium_seat_selection, :string
    add_column :airlines, :in_flight_food, :string
    add_column :airlines, :pets, :string
    add_column :airlines, :balnkets_pillow, :string
  end
end
