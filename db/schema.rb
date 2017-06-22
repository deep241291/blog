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

ActiveRecord::Schema.define(version: 20170622200245) do

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id",            limit: 4
    t.integer  "post_id",            limit: 4
    t.string   "name",               limit: 255
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.integer  "cached_votes_up",    limit: 4,   default: 0
    t.integer  "cached_votes_down",  limit: 4,   default: 0
    t.integer  "cached_votes_score", limit: 4,   default: 0
  end

  add_index "comments", ["cached_votes_down"], name: "index_comments_on_cached_votes_down", using: :btree
  add_index "comments", ["cached_votes_score"], name: "index_comments_on_cached_votes_score", using: :btree
  add_index "comments", ["cached_votes_up"], name: "index_comments_on_cached_votes_up", using: :btree

  create_table "events", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.text     "description",   limit: 16777215
    t.string   "address",       limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.string   "contact_email", limit: 255
    t.string   "contact_no",    limit: 255
    t.decimal  "fees",                           precision: 30, scale: 10, default: 0.0
    t.integer  "created_by",    limit: 4
    t.string   "avatar",        limit: 255
    t.datetime "created_at",                                                             null: false
    t.datetime "updated_at",                                                             null: false
  end

  create_table "events_users", force: :cascade do |t|
    t.integer "user_id",  limit: 4
    t.integer "event_id", limit: 4
  end

  add_index "events_users", ["event_id"], name: "index_events_users_on_event_id", using: :btree
  add_index "events_users", ["user_id"], name: "index_events_users_on_user_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id",            limit: 4
    t.string   "name",               limit: 255
    t.string   "avatar",             limit: 255
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.integer  "cached_votes_up",    limit: 4,   default: 0
    t.integer  "cached_votes_down",  limit: 4,   default: 0
    t.integer  "cached_votes_score", limit: 4,   default: 0
  end

  add_index "posts", ["cached_votes_down"], name: "index_posts_on_cached_votes_down", using: :btree
  add_index "posts", ["cached_votes_score"], name: "index_posts_on_cached_votes_score", using: :btree
  add_index "posts", ["cached_votes_up"], name: "index_posts_on_cached_votes_up", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "name",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "votes", force: :cascade do |t|
    t.integer  "votable_id",   limit: 4
    t.string   "votable_type", limit: 255
    t.integer  "voter_id",     limit: 4
    t.string   "voter_type",   limit: 255
    t.boolean  "vote_flag"
    t.string   "vote_scope",   limit: 255
    t.integer  "vote_weight",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree

end
