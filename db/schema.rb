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

ActiveRecord::Schema.define(version: 20180803175323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "borrowers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "phone"
    t.string "street"
    t.string "state"
    t.integer "zip"
    t.string "company_name"
    t.string "employer_street"
    t.string "employer_state"
    t.integer "employer_zip"
    t.string "current_position"
    t.string "start_date"
    t.integer "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_borrowers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_borrowers_on_reset_password_token", unique: true
  end

  create_table "lenders", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "phone"
    t.string "street"
    t.string "state"
    t.integer "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_lenders_on_email", unique: true
    t.index ["reset_password_token"], name: "index_lenders_on_reset_password_token", unique: true
  end

  create_table "notes", force: :cascade do |t|
    t.string "notable_type"
    t.bigint "notable_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["notable_type", "notable_id"], name: "index_notes_on_notable_type_and_notable_id"
  end

end
