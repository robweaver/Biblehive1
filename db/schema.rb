# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131016055249) do

  create_table "books", force: true do |t|
    t.integer  "book_no"
    t.string   "book_name"
    t.integer  "book_chapters"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "books", ["book_name"], name: "index_books_on_book_name"
  add_index "books", ["book_no"], name: "index_books_on_book_no"

  create_table "chapters", force: true do |t|
    t.integer  "book_no"
    t.integer  "chapter_no"
    t.integer  "chapter_verses"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chapters", ["chapter_no"], name: "index_chapters_on_chapter_no"
  add_index "chapters", ["id"], name: "index_chapters_on_id"

  create_table "user_progresses", force: true do |t|
    t.integer  "user_id"
    t.integer  "book_no"
    t.integer  "chapter_no"
    t.datetime "last_read"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "chapter_id"
  end

  add_index "user_progresses", ["chapter_id"], name: "index_user_progresses_on_chapter_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
