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

ActiveRecord::Schema.define(version: 2019_02_04_181217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "invalids", force: :cascade do |t|
    t.integer "from_type_id"
    t.integer "to_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monsters", force: :cascade do |t|
    t.integer "no"
    t.string "name"
    t.string "screen_name"
    t.string "type1"
    t.string "type2"
    t.integer "hp"
    t.integer "atk"
    t.integer "blk"
    t.integer "ctc"
    t.integer "def"
    t.integer "spd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parsonalities", force: :cascade do |t|
    t.string "name"
    t.string "screen_name"
    t.float "atk"
    t.float "blk"
    t.float "ctc"
    t.float "def"
    t.float "spd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "screen_name"
    t.string "element"
    t.string "category"
    t.integer "power"
    t.integer "accuracy"
    t.integer "pp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "strong_points", force: :cascade do |t|
    t.integer "from_type_id"
    t.integer "to_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.string "screen_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weak_points", force: :cascade do |t|
    t.integer "from_type_id"
    t.integer "to_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
