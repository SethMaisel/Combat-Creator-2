# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_29_204242) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fights", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lines", force: :cascade do |t|
    t.string "line"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "movements", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sequences", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.bigint "weapon_id", null: false
    t.bigint "movement_id", null: false
    t.bigint "fight_id", null: false
    t.bigint "technique_id", null: false
    t.bigint "line_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_sequences_on_character_id"
    t.index ["fight_id"], name: "index_sequences_on_fight_id"
    t.index ["line_id"], name: "index_sequences_on_line_id"
    t.index ["movement_id"], name: "index_sequences_on_movement_id"
    t.index ["technique_id"], name: "index_sequences_on_technique_id"
    t.index ["weapon_id"], name: "index_sequences_on_weapon_id"
  end

  create_table "techniques", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "sequences", "characters"
  add_foreign_key "sequences", "fights"
  add_foreign_key "sequences", "lines"
  add_foreign_key "sequences", "movements"
  add_foreign_key "sequences", "techniques"
  add_foreign_key "sequences", "weapons"
end
