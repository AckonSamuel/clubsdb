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

ActiveRecord::Schema[7.0].define(version: 2022_12_06_115541) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "venue"
    t.string "available_days"
    t.string "available_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.string "group"
    t.integer "member_size"
    t.integer "executive_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "condition_id", null: false
    t.bigint "contacts_id", null: false
    t.index ["condition_id"], name: "index_clubs_on_condition_id"
    t.index ["contacts_id"], name: "index_clubs_on_contacts_id"
  end

  create_table "clubs_members", force: :cascade do |t|
    t.bigint "clubs_id", null: false
    t.bigint "members_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clubs_id"], name: "index_clubs_members_on_clubs_id"
    t.index ["members_id"], name: "index_clubs_members_on_members_id"
  end

  create_table "conditions", force: :cascade do |t|
    t.boolean "approved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "email"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "executives", force: :cascade do |t|
    t.string "portfolio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "members_id", null: false
    t.index ["members_id"], name: "index_executives_on_members_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patrons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "members_id", null: false
    t.index ["members_id"], name: "index_patrons_on_members_id"
  end

  create_table "programmes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "contacts_id", null: false
    t.bigint "clubs_members_id", null: false
    t.index ["clubs_members_id"], name: "index_staffs_on_clubs_members_id"
    t.index ["contacts_id"], name: "index_staffs_on_contacts_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "contacts_id", null: false
    t.bigint "clubs_members_id", null: false
    t.bigint "programmes_id", null: false
    t.index ["clubs_members_id"], name: "index_students_on_clubs_members_id"
    t.index ["contacts_id"], name: "index_students_on_contacts_id"
    t.index ["programmes_id"], name: "index_students_on_programmes_id"
  end

  add_foreign_key "clubs", "conditions"
  add_foreign_key "clubs", "contacts", column: "contacts_id"
  add_foreign_key "clubs_members", "clubs", column: "clubs_id"
  add_foreign_key "clubs_members", "members", column: "members_id"
  add_foreign_key "executives", "members", column: "members_id"
  add_foreign_key "patrons", "members", column: "members_id"
  add_foreign_key "staffs", "clubs_members", column: "clubs_members_id"
  add_foreign_key "staffs", "contacts", column: "contacts_id"
  add_foreign_key "students", "clubs_members", column: "clubs_members_id"
  add_foreign_key "students", "contacts", column: "contacts_id"
  add_foreign_key "students", "programmes", column: "programmes_id"
end
