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

ActiveRecord::Schema[7.0].define(version: 2022_12_06_152641) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "club_staffs", force: :cascade do |t|
    t.bigint "clubs_id", null: false
    t.bigint "staffs_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clubs_id"], name: "index_club_staffs_on_clubs_id"
    t.index ["staffs_id"], name: "index_club_staffs_on_staffs_id"
  end

  create_table "club_students", force: :cascade do |t|
    t.bigint "clubs_id", null: false
    t.bigint "students_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clubs_id"], name: "index_club_students_on_clubs_id"
    t.index ["students_id"], name: "index_club_students_on_students_id"
  end

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.string "group"
    t.integer "member_size"
    t.integer "executive_size"
    t.string "email"
    t.string "telephone_number"
    t.boolean "approved"
    t.string "meeting_places"
    t.string "meeting_days"
    t.string "meeting_times"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "executives", force: :cascade do |t|
    t.string "portfolio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "club_students_id", null: false
    t.index ["club_students_id"], name: "index_executives_on_club_students_id"
  end

  create_table "patrons", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "club_staffs_id", null: false
    t.index ["club_staffs_id"], name: "index_patrons_on_club_staffs_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.string "programme_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "club_staffs", "clubs", column: "clubs_id"
  add_foreign_key "club_staffs", "staffs", column: "staffs_id"
  add_foreign_key "club_students", "clubs", column: "clubs_id"
  add_foreign_key "club_students", "students", column: "students_id"
  add_foreign_key "executives", "club_students", column: "club_students_id"
  add_foreign_key "patrons", "club_staffs", column: "club_staffs_id"
end
