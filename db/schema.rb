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

ActiveRecord::Schema.define(version: 20141209131948) do

  create_table "dictionaries", force: true do |t|
    t.string   "name",            null: false
    t.text     "description"
    t.integer  "created_user_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locales", force: true do |t|
    t.string   "lang_territory", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "translation_words", force: true do |t|
    t.integer  "prev_id"
    t.string   "cud_type",        null: false
    t.integer  "work_id",         null: false
    t.integer  "locale_id",       null: false
    t.text     "content"
    t.string   "progress_status", null: false
    t.integer  "created_user_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "translation_words", ["locale_id"], name: "index_translation_words_on_locale_id", using: :btree
  add_index "translation_words", ["work_id"], name: "index_translation_words_on_work_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: ""
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
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "role"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "words", force: true do |t|
    t.integer  "dictionary_id",   null: false
    t.string   "use_status",      null: false
    t.integer  "created_user_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "words", ["dictionary_id"], name: "index_words_on_dictionary_id", using: :btree

end
