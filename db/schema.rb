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

ActiveRecord::Schema.define(version: 2020_09_25_044402) do

  create_table "child_archive_temperaments", force: :cascade do |t|
    t.integer "child_archive_id"
    t.integer "temperament_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["child_archive_id"], name: "index_child_archive_temperaments_on_child_archive_id"
    t.index ["temperament_id"], name: "index_child_archive_temperaments_on_temperament_id"
  end

  create_table "child_archives", force: :cascade do |t|
    t.integer "child_id"
    t.integer "age_year"
    t.boolean "environment"
    t.text "favorite_thing"
    t.text "un_favorite_thing"
    t.text "status"
    t.string "profile_image_id"
    t.text "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "age_month"
    t.integer "user_id"
    t.string "name"
  end

  create_table "child_temperaments", force: :cascade do |t|
    t.integer "child_id"
    t.integer "temperament_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["child_id"], name: "index_child_temperaments_on_child_id"
    t.index ["temperament_id"], name: "index_child_temperaments_on_temperament_id"
  end

  create_table "children", force: :cascade do |t|
    t.integer "user_id"
    t.integer "sex"
    t.integer "age_year"
    t.boolean "environment"
    t.string "name"
    t.text "favorite_thing"
    t.text "un_favorite_thing"
    t.text "status"
    t.string "profile_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "age_month"
  end

  create_table "effects", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "review_temperaments", force: :cascade do |t|
    t.integer "review_id"
    t.integer "temperament_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["review_id"], name: "index_review_temperaments_on_review_id"
    t.index ["temperament_id"], name: "index_review_temperaments_on_temperament_id"
  end

  create_table "reviewfavorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "review_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "toy_id"
    t.integer "review_point"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "effect_id"
    t.float "rate", default: 0.0, null: false
    t.integer "child_id"
    t.integer "age_year"
    t.integer "age_month"
  end

  create_table "temperaments", force: :cascade do |t|
    t.string "name"
    t.text "explanation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toyfavorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "toy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toys", force: :cascade do |t|
    t.integer "genre_id"
    t.string "name"
    t.text "manufacturer"
    t.text "toy_introduction"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "material"
    t.integer "depth"
    t.integer "width"
    t.integer "height"
    t.integer "target_yearage"
    t.integer "target_monthage"
    t.string "toy1_image_id"
    t.string "toy2_image_id"
    t.string "toy3_image_id"
    t.string "toy4_image_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.integer "age"
    t.integer "sex"
    t.text "introduction"
    t.text "hobby"
    t.string "profile_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "place"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
