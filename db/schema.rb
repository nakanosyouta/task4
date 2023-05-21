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

ActiveRecord::Schema.define(version: 2023_05_21_080225) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "customers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.string "last_name_kana", null: false
    t.string "first_name_kana", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "instructions", force: :cascade do |t|
    t.integer "machine_id"
    t.string "product_name", null: false
    t.string "conductor", null: false
    t.string "conductor_range", null: false
    t.string "insulator"
    t.string "insulator_range"
    t.string "finish", null: false
    t.string "finish_range", null: false
    t.integer "order", null: false
    t.string "volume", null: false
    t.string "bobbin", null: false
    t.string "temperature_top"
    t.string "temperature_under"
    t.string "paint_top"
    t.string "paint_under"
    t.string "speed", null: false
    t.string "lubricant"
    t.string "apply"
    t.string "product_time", null: false
    t.string "material", null: false
    t.string "delivery", null: false
    t.string "ovrview"
    t.string "work_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "machines", force: :cascade do |t|
    t.string "instruction_id"
    t.string "machine_unit", null: false
    t.string "machine_number", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "process_controls", force: :cascade do |t|
    t.string "staff_id"
    t.string "machine_id"
    t.string "instruction_id"
    t.string "temperature_set", null: false
    t.string "temperature_out", null: false
    t.string "check_exterior", null: false
    t.string "check_line", null: false
    t.string "check_paint", null: false
    t.string "check_neme", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "status", default: 1, null: false
  end

end
