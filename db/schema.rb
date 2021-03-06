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

ActiveRecord::Schema.define(version: 20160308063305) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "github_profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "nickname"
    t.string   "email"
    t.string   "name"
    t.string   "image"
    t.string   "location"
    t.integer  "public_repo"
    t.integer  "public_gists"
    t.integer  "followers"
    t.integer  "following"
    t.string   "member_since"
    t.integer  "private_repos"
    t.string   "github_link"
    t.string   "blog_link"
    t.text     "bio"
    t.string   "access_token"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "repositories", force: :cascade do |t|
    t.string   "name"
    t.string   "github_profile_nickname"
    t.string   "full_name"
    t.string   "html_url"
    t.text     "description"
    t.datetime "crated_at"
    t.string   "git_url"
    t.string   "svn_url"
    t.integer  "watchers_count"
    t.string   "language"
    t.boolean  "has_issues"
    t.boolean  "has_wiki"
    t.integer  "forks_count"
    t.integer  "open_issues_count"
    t.boolean  "open_issues"
    t.integer  "watchers"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
