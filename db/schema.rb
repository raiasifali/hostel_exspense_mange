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

ActiveRecord::Schema.define(version: 2019_12_18_112207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "daily_exsp_details", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "daily_exspenses_id", null: false
    t.integer "amount"
    t.boolean "is_paid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["daily_exspenses_id"], name: "index_daily_exsp_details_on_daily_exspenses_id"
    t.index ["user_id"], name: "index_daily_exsp_details_on_user_id"
  end

  create_table "daily_exspenses", force: :cascade do |t|
    t.string "description"
    t.integer "totalamount"
    t.string "time"
    t.string "creaded_by"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exspense_payments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "paid_amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_exspense_payments_on_user_id"
  end

  create_table "hostels", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_hostels_on_email", unique: true
    t.index ["reset_password_token"], name: "index_hostels_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.bigint "hostels_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hostels_id"], name: "index_users_on_hostels_id"
  end

  add_foreign_key "daily_exsp_details", "daily_exspenses", column: "daily_exspenses_id"
  add_foreign_key "daily_exsp_details", "users"
  add_foreign_key "exspense_payments", "users"
  add_foreign_key "users", "hostels", column: "hostels_id"
end