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

ActiveRecord::Schema.define(version: 2019_05_28_013618) do

  create_table "requests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "request_user"
    t.string "request_type"
    t.string "request_team"
    t.string "project_name"
    t.string "product_name"
    t.text "request_detail"
    t.datetime "desired_date"
    t.string "person_charge"
    t.string "request_flg"
    t.integer "progress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "uid"
    t.integer "true"
    t.string "uname"
    t.string "password"
    t.integer "active_flg"
    t.integer "permission"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
