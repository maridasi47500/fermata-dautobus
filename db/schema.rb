# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_12_07_014807) do
  create_table "passages", force: :cascade do |t|
    t.integer "piece_id"
    t.string "title"
    t.string "description"
    t.string "myscore"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "time_signature"
    t.string "key_signature"
  end

  create_table "pieces", force: :cascade do |t|
    t.string "title"
    t.string "composer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "time_signature"
    t.string "key_signature"
    t.string "language"
  end
end
