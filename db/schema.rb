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

ActiveRecord::Schema.define(version: 20170506173743) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "factions", force: :cascade do |t|
    t.string   "name",                    null: false
    t.string   "image_url",               null: false
    t.string   "color",                   null: false
    t.string   "description",             null: false
    t.integer  "games",       default: 0, null: false
    t.integer  "wins",        default: 0, null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "games", force: :cascade do |t|
    t.bigint  "player_number",                 null: false
    t.boolean "skullport",     default: false
    t.boolean "undermountain", default: false
  end

  create_table "lords", force: :cascade do |t|
    t.string   "name",                           null: false
    t.string   "game_box"
    t.boolean  "quests"
    t.string   "bonus_description", default: [],              array: true
    t.string   "description"
    t.integer  "games",             default: 0,  null: false
    t.integer  "wins",              default: 0,  null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "username",                            null: false
    t.integer  "games_played",           default: 0,  null: false
    t.integer  "wins",                   default: 0,  null: false
    t.integer  "game_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
    t.index ["email"], name: "index_players_on_email", unique: true, using: :btree
    t.index ["game_id"], name: "index_players_on_game_id", using: :btree
    t.index ["reset_password_token"], name: "index_players_on_reset_password_token", unique: true, using: :btree
  end

end
