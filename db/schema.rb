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

ActiveRecord::Schema.define(version: 20140520095011) do

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appointments", force: true do |t|
    t.integer  "physician_id"
    t.integer  "patient_id"
    t.datetime "appointment_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blog_comments", force: true do |t|
    t.text     "content"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blog_comments", ["post_id"], name: "index_blog_comments_on_post_id", using: :btree

  create_table "blog_posts", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.text     "metadata"
  end

  add_index "blog_posts", ["user_id"], name: "index_blog_posts_on_user_id", using: :btree

  create_table "brevets", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campaigns", force: true do |t|
    t.string   "name"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "campaigns", ["account_id"], name: "index_campaigns_on_account_id", using: :btree

  create_table "catgrades", force: true do |t|
    t.string   "libcatgrade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fonctionns", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fonctions", force: true do |t|
    t.string   "libfonction"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grades", force: true do |t|
    t.string   "libgrade"
    t.integer  "catgrade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "grades", ["catgrade_id"], name: "index_grades_on_catgrade_id", using: :btree

  create_table "joint2s", force: true do |t|
    t.integer  "per_id"
    t.integer  "brevet_id"
    t.datetime "appointment_date"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "joints", force: true do |t|
    t.integer  "per_id"
    t.integer  "brevet_id"
    t.datetime "appointment_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personnees", force: true do |t|
    t.string   "name"
    t.integer  "fonctionn_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "personnees", ["fonctionn_id"], name: "index_personnees_on_fonctionn_id", using: :btree

  create_table "personnes", force: true do |t|
    t.string   "nom"
    t.integer  "fonction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "personnes", ["fonction_id"], name: "index_personnes_on_fonction_id", using: :btree

  create_table "physicians", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "profile"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
