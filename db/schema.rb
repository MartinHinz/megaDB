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

ActiveRecord::Schema.define(version: 20160523084857) do

  create_table "catalogue_entries", force: :cascade do |t|
    t.integer  "catalogue_id"
    t.integer  "site_id"
    t.string   "nr"
    t.integer  "page"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "catalogue_entries", ["catalogue_id"], name: "index_catalogue_entries_on_catalogue_id"
  add_index "catalogue_entries", ["site_id"], name: "index_catalogue_entries_on_site_id"

  create_table "catalogues", force: :cascade do |t|
    t.string   "name"
    t.text     "citation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "external_collection_entries", force: :cascade do |t|
    t.integer  "external_collection_id"
    t.integer  "site_id"
    t.string   "there_id"
    t.string   "url"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "external_collection_entries", ["external_collection_id"], name: "index_external_collection_entries_on_external_collection_id"
  add_index "external_collection_entries", ["site_id"], name: "index_external_collection_entries_on_site_id"

  create_table "external_collections", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "mega_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sites", force: :cascade do |t|
    t.string   "name"
    t.string   "toponym"
    t.string   "nuts_3"
    t.string   "nuts_2"
    t.string   "nuts_1"
    t.text     "description"
    t.string   "literature"
    t.string   "la_nr"
    t.float    "lat"
    t.float    "lng"
    t.integer  "mega_type_id"
    t.integer  "source_id"
    t.text     "comments"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "sites", ["mega_type_id"], name: "index_sites_on_mega_type_id"
  add_index "sites", ["source_id"], name: "index_sites_on_source_id"

  create_table "sources", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
