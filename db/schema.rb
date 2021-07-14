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

ActiveRecord::Schema.define(version: 2021_07_14_063536) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "boursiers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bureausmembers", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "profil_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "duration"
    t.date "started_at"
    t.index ["profil_id"], name: "index_bureausmembers_on_profil_id"
    t.index ["user_id"], name: "index_bureausmembers_on_user_id"
  end

  create_table "docs", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.text "image_data"
    t.index ["user_id"], name: "index_docs_on_user_id"
  end

  create_table "faireanneelangues", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "langueformations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "newinformations", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
  end

  create_table "niveauformations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profils", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.date "date_of_birth"
    t.date "passport_expiration_date"
    t.string "address"
    t.date "year_of_chinese_language"
    t.string "university_of_chinese_language_year"
    t.date "starting_year_major"
    t.string "university_major"
    t.string "major"
    t.integer "major_duration"
    t.date "graduation_year"
    t.string "level_of_major"
    t.string "telephone"
    t.string "photo"
    t.string "passport_picture"
    t.string "are_you_in_china"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "boursier_id"
    t.bigint "typebourse_id"
    t.bigint "faireanneelangue_id"
    t.bigint "genre_id"
    t.bigint "langueformation_id"
    t.bigint "niveauformation_id"
    t.bigint "province_id"
    t.bigint "language_province"
    t.bigint "user_id"
    t.string "passport_number"
    t.index ["boursier_id"], name: "index_students_on_boursier_id"
    t.index ["faireanneelangue_id"], name: "index_students_on_faireanneelangue_id"
    t.index ["genre_id"], name: "index_students_on_genre_id"
    t.index ["langueformation_id"], name: "index_students_on_langueformation_id"
    t.index ["niveauformation_id"], name: "index_students_on_niveauformation_id"
    t.index ["province_id"], name: "index_students_on_province_id"
    t.index ["typebourse_id"], name: "index_students_on_typebourse_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "typebourses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "roles"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "yes_nos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bureausmembers", "profils"
  add_foreign_key "bureausmembers", "users"
  add_foreign_key "docs", "users"
  add_foreign_key "students", "boursiers"
  add_foreign_key "students", "faireanneelangues"
  add_foreign_key "students", "genres"
  add_foreign_key "students", "langueformations"
  add_foreign_key "students", "niveauformations"
  add_foreign_key "students", "provinces"
  add_foreign_key "students", "typebourses"
  add_foreign_key "students", "users"
end
