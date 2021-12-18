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

ActiveRecord::Schema.define(version: 2021_12_18_215130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.text "rules"
    t.text "overview"
    t.string "platform"
    t.bigint "game_id", null: false
    t.index ["game_id"], name: "index_categories_on_game_id"
  end

  create_table "dashboards", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "game_tricks", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "game_id", null: false
    t.bigint "trick_id", null: false
    t.index ["game_id"], name: "index_game_tricks_on_game_id"
    t.index ["trick_id"], name: "index_game_tricks_on_trick_id"
  end

  create_table "games", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "platform"
    t.text "overview"
    t.string "release_date"
    t.bigint "series_id", null: false
    t.index ["series_id"], name: "index_games_on_series_id"
  end

  create_table "guides", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "revision"
    t.string "game_version"
    t.string "creator"
    t.text "content"
    t.bigint "game_id", null: false
    t.bigint "category_id", null: false
    t.index ["category_id"], name: "index_guides_on_category_id"
    t.index ["game_id"], name: "index_guides_on_game_id"
  end

  create_table "levels", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.text "description"
    t.bigint "game_id", null: false
    t.index ["game_id"], name: "index_levels_on_game_id"
  end

  create_table "resources", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.text "description"
  end

  create_table "series", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "skips", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "game_id", null: false
    t.bigint "level_id", null: false
    t.string "name"
    t.string "game_version"
    t.string "discoverer"
    t.text "description"
    t.string "platform"
    t.index ["game_id"], name: "index_skips_on_game_id"
    t.index ["level_id"], name: "index_skips_on_level_id"
  end

  create_table "tricks", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "game_version"
    t.string "discoverer"
    t.text "description"
    t.string "platform"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.integer "access_count_to_reset_password_page", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["remember_me_token"], name: "index_users_on_remember_me_token"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token"
  end

  add_foreign_key "categories", "games"
  add_foreign_key "game_tricks", "games"
  add_foreign_key "game_tricks", "tricks"
  add_foreign_key "games", "series"
  add_foreign_key "guides", "categories"
  add_foreign_key "guides", "games"
  add_foreign_key "levels", "games"
  add_foreign_key "skips", "games"
  add_foreign_key "skips", "levels"
end
