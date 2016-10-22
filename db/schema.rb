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

ActiveRecord::Schema.define(version: 20161022170812) do

  create_table "businesses", force: :cascade do |t|
    t.string   "name"
    t.string   "business_type"
    t.integer  "stings"
    t.integer  "buzzes"
    t.string   "phone_number"
    t.text     "special_events"
    t.text     "address"
    t.string   "zip_code"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "business_id"
    t.text     "feedback_type"
    t.text     "relationship_type"
    t.text     "feedback_comment"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["business_id"], name: "index_reviews_on_business_id"
  end

end
