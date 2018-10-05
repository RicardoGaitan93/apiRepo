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

ActiveRecord::Schema.define(version: 20181005014241) do

  create_table "email_attachments", force: :cascade do |t|
    t.text "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "email_configs", force: :cascade do |t|
    t.string "EmailConfigcode"
    t.string "server"
    t.string "port"
    t.string "useremail"
    t.string "passwordemail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "email_reports", force: :cascade do |t|
    t.string "to"
    t.string "cc"
    t.string "title"
    t.string "body"
    t.string "type"
    t.text "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "report_types", force: :cascade do |t|
    t.string "ReportTypecode"
    t.string "description"
    t.boolean "isusernecessary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.string "Reportcode"
    t.integer "sequence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "status_types", force: :cascade do |t|
    t.string "StatusTypecode"
    t.string "description"
    t.boolean "ispending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "Usercode"
    t.string "name"
    t.string "nickname"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
