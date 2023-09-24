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

ActiveRecord::Schema[7.0].define(version: 2023_09_24_052808) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "load_forecasts", force: :cascade do |t|
    t.bigint "load_spot_id", null: false
    t.datetime "forecasted_at"
    t.date "target_date"
    t.decimal "_01", precision: 20, scale: 10
    t.decimal "_02", precision: 20, scale: 10
    t.decimal "_03", precision: 20, scale: 10
    t.decimal "_04", precision: 20, scale: 10
    t.decimal "_05", precision: 20, scale: 10
    t.decimal "_06", precision: 20, scale: 10
    t.decimal "_07", precision: 20, scale: 10
    t.decimal "_08", precision: 20, scale: 10
    t.decimal "_09", precision: 20, scale: 10
    t.decimal "_10", precision: 20, scale: 10
    t.decimal "_11", precision: 20, scale: 10
    t.decimal "_12", precision: 20, scale: 10
    t.decimal "_13", precision: 20, scale: 10
    t.decimal "_14", precision: 20, scale: 10
    t.decimal "_15", precision: 20, scale: 10
    t.decimal "_16", precision: 20, scale: 10
    t.decimal "_17", precision: 20, scale: 10
    t.decimal "_18", precision: 20, scale: 10
    t.decimal "_19", precision: 20, scale: 10
    t.decimal "_20", precision: 20, scale: 10
    t.decimal "_21", precision: 20, scale: 10
    t.decimal "_22", precision: 20, scale: 10
    t.decimal "_23", precision: 20, scale: 10
    t.decimal "_24", precision: 20, scale: 10
    t.decimal "_25", precision: 20, scale: 10
    t.decimal "_26", precision: 20, scale: 10
    t.decimal "_27", precision: 20, scale: 10
    t.decimal "_28", precision: 20, scale: 10
    t.decimal "_29", precision: 20, scale: 10
    t.decimal "_30", precision: 20, scale: 10
    t.decimal "_31", precision: 20, scale: 10
    t.decimal "_32", precision: 20, scale: 10
    t.decimal "_33", precision: 20, scale: 10
    t.decimal "_34", precision: 20, scale: 10
    t.decimal "_35", precision: 20, scale: 10
    t.decimal "_36", precision: 20, scale: 10
    t.decimal "_37", precision: 20, scale: 10
    t.decimal "_38", precision: 20, scale: 10
    t.decimal "_39", precision: 20, scale: 10
    t.decimal "_40", precision: 20, scale: 10
    t.decimal "_41", precision: 20, scale: 10
    t.decimal "_42", precision: 20, scale: 10
    t.decimal "_43", precision: 20, scale: 10
    t.decimal "_44", precision: 20, scale: 10
    t.decimal "_45", precision: 20, scale: 10
    t.decimal "_46", precision: 20, scale: 10
    t.decimal "_47", precision: 20, scale: 10
    t.decimal "_48", precision: 20, scale: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["load_spot_id"], name: "index_load_forecasts_on_load_spot_id"
  end

  create_table "load_spot_load_forecast_limits", force: :cascade do |t|
    t.bigint "load_spot_id", null: false
    t.decimal "_01", precision: 20, scale: 10
    t.decimal "_02", precision: 20, scale: 10
    t.decimal "_03", precision: 20, scale: 10
    t.decimal "_04", precision: 20, scale: 10
    t.decimal "_05", precision: 20, scale: 10
    t.decimal "_06", precision: 20, scale: 10
    t.decimal "_07", precision: 20, scale: 10
    t.decimal "_08", precision: 20, scale: 10
    t.decimal "_09", precision: 20, scale: 10
    t.decimal "_10", precision: 20, scale: 10
    t.decimal "_11", precision: 20, scale: 10
    t.decimal "_12", precision: 20, scale: 10
    t.decimal "_13", precision: 20, scale: 10
    t.decimal "_14", precision: 20, scale: 10
    t.decimal "_15", precision: 20, scale: 10
    t.decimal "_16", precision: 20, scale: 10
    t.decimal "_17", precision: 20, scale: 10
    t.decimal "_18", precision: 20, scale: 10
    t.decimal "_19", precision: 20, scale: 10
    t.decimal "_20", precision: 20, scale: 10
    t.decimal "_21", precision: 20, scale: 10
    t.decimal "_22", precision: 20, scale: 10
    t.decimal "_23", precision: 20, scale: 10
    t.decimal "_24", precision: 20, scale: 10
    t.decimal "_25", precision: 20, scale: 10
    t.decimal "_26", precision: 20, scale: 10
    t.decimal "_27", precision: 20, scale: 10
    t.decimal "_28", precision: 20, scale: 10
    t.decimal "_29", precision: 20, scale: 10
    t.decimal "_30", precision: 20, scale: 10
    t.decimal "_31", precision: 20, scale: 10
    t.decimal "_32", precision: 20, scale: 10
    t.decimal "_33", precision: 20, scale: 10
    t.decimal "_34", precision: 20, scale: 10
    t.decimal "_35", precision: 20, scale: 10
    t.decimal "_36", precision: 20, scale: 10
    t.decimal "_37", precision: 20, scale: 10
    t.decimal "_38", precision: 20, scale: 10
    t.decimal "_39", precision: 20, scale: 10
    t.decimal "_40", precision: 20, scale: 10
    t.decimal "_41", precision: 20, scale: 10
    t.decimal "_42", precision: 20, scale: 10
    t.decimal "_43", precision: 20, scale: 10
    t.decimal "_44", precision: 20, scale: 10
    t.decimal "_45", precision: 20, scale: 10
    t.decimal "_46", precision: 20, scale: 10
    t.decimal "_47", precision: 20, scale: 10
    t.decimal "_48", precision: 20, scale: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["load_spot_id"], name: "index_load_spot_load_forecast_limits_on_load_spot_id"
  end

  create_table "load_spots", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "load_forecasts", "load_spots"
  add_foreign_key "load_spot_load_forecast_limits", "load_spots"
end
