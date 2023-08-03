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

ActiveRecord::Schema[7.0].define(version: 2023_08_01_142528) do
  create_table "comments", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "commentable_type"
    t.integer "commentable_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "contact_number"
    t.string "email"
    t.integer "position_id"
    t.index ["position_id"], name: "index_employees_on_position_id"
  end

  create_table "employees_projects", id: false, force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "employee_id", null: false
  end

  create_table "leaves", force: :cascade do |t|
    t.string "reason"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "employee_id"
    t.index ["employee_id"], name: "index_leaves_on_employee_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
