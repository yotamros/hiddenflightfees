# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141210234400) do

  create_table "airlines", force: true do |t|
    t.string   "name"
    t.string   "carry_on"
    t.string   "pet"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_checked_bag"
    t.string   "second_checked_bag"
    t.string   "additional_bags"
    t.string   "overweight_bags"
    t.string   "oversized_bags"
    t.string   "ticket_change_fee_domestic_only"
    t.string   "booking_fee"
    t.string   "unaccompanied_minor"
    t.string   "seat_selection"
    t.string   "premium_seat_selection"
    t.string   "in_flight_food"
    t.string   "balnkets_pillow"
  end

  create_table "fees", force: true do |t|
    t.string   "carry_on"
    t.string   "pets"
    t.string   "food"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
