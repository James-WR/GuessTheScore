# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_23_144939) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "communities", force: :cascade do |t|
    t.string "community_name"
    t.string "join_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "owner_id"
    t.bigint "league_id"
    t.index ["league_id"], name: "index_communities_on_league_id"
    t.index ["owner_id"], name: "index_communities_on_owner_id"
  end

  create_table "fixtures", force: :cascade do |t|
    t.date "date"
    t.integer "home_goals_result"
    t.integer "away_goals_result"
    t.integer "match_week"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "home_team_id"
    t.bigint "away_team_id"
    t.index ["away_team_id"], name: "index_fixtures_on_away_team_id"
    t.index ["home_team_id"], name: "index_fixtures_on_home_team_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string "league_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "member_guesses", force: :cascade do |t|
    t.integer "home_goals_guess"
    t.integer "away_goals_guess"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "member_id"
    t.bigint "fixture_id"
    t.index ["fixture_id"], name: "index_member_guesses_on_fixture_id"
    t.index ["member_id"], name: "index_member_guesses_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.integer "overall_exact"
    t.integer "overall_fuzzy"
    t.integer "overall_points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "community_id"
    t.index ["community_id"], name: "index_members_on_community_id"
    t.index ["user_id"], name: "index_members_on_user_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "team_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "league_id"
    t.index ["league_id"], name: "index_teams_on_league_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "communities", "leagues"
  add_foreign_key "communities", "users", column: "owner_id"
  add_foreign_key "fixtures", "teams", column: "away_team_id"
  add_foreign_key "fixtures", "teams", column: "home_team_id"
  add_foreign_key "member_guesses", "fixtures"
  add_foreign_key "member_guesses", "members"
  add_foreign_key "members", "communities"
  add_foreign_key "members", "users"
  add_foreign_key "teams", "leagues"
end
