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

ActiveRecord::Schema.define(version: 20170821160643) do

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres_models", id: false, force: :cascade do |t|
    t.integer "model_id", null: false
    t.integer "genre_id", null: false
    t.index ["genre_id", "model_id"], name: "index_genres_models_on_genre_id_and_model_id"
    t.index ["model_id", "genre_id"], name: "index_genres_models_on_model_id_and_genre_id"
  end

  create_table "inquiries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "facebook"
    t.text "message"
  end

  create_table "models", force: :cascade do |t|
    t.string "name"
    t.string "height"
    t.string "weight"
    t.string "bust"
    t.string "waist"
    t.string "hips"
    t.string "cup"
    t.string "dress"
    t.string "shoe"
    t.string "hair_color"
    t.string "hair_length"
    t.string "eye_color"
    t.string "ethnicity"
    t.string "skin_color"
    t.boolean "nudes"
    t.string "tattoos"
    t.string "piercings"
    t.string "experience"
    t.string "compensation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "gender"
    t.string "country"
    t.boolean "new", default: true
    t.boolean "confirmed", default: false
    t.string "phone_number"
    t.string "email"
  end

  create_table "pictures", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "model_id"
    t.string "picture_1"
    t.string "picture_2"
    t.string "picture_3"
    t.string "picture_preview"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
