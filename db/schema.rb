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

ActiveRecord::Schema.define(version: 2021_03_27_014650) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boursiers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carteconsulaires", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "etudiants", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.date "date_nasissance"
    t.string "passport"
    t.date "date_passport_expiration"
    t.string "adresse"
    t.date "annee_langue_chinoise"
    t.string "universite_annee_langue_chinoise"
    t.date "annee_debut_filiere"
    t.string "province_uinversite_filiere"
    t.string "universite_filiere"
    t.string "filiere"
    t.integer "duree_formation"
    t.string "langue_de_formation"
    t.date "annee_de_graduation"
    t.string "niveau_formation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "genre_id"
    t.bigint "carteconsulaire_id"
    t.bigint "boursier_id"
    t.bigint "typebourse_id"
    t.bigint "faireanneelangue_id"
    t.bigint "province_id"
    t.bigint "langueformation_id"
    t.string "telephone"
    t.string "photo"
    t.string "passport_image"
    t.string "etreenchine"
    t.bigint "user_id"
    t.bigint "niveauformation_id"
    t.string "email"
    t.bigint "province_langue"
    t.bigint "zone"
    t.string "matricule"
    t.index ["boursier_id"], name: "index_etudiants_on_boursier_id"
    t.index ["carteconsulaire_id"], name: "index_etudiants_on_carteconsulaire_id"
    t.index ["faireanneelangue_id"], name: "index_etudiants_on_faireanneelangue_id"
    t.index ["genre_id"], name: "index_etudiants_on_genre_id"
    t.index ["langueformation_id"], name: "index_etudiants_on_langueformation_id"
    t.index ["niveauformation_id"], name: "index_etudiants_on_niveauformation_id"
    t.index ["province_id"], name: "index_etudiants_on_province_id"
    t.index ["typebourse_id"], name: "index_etudiants_on_typebourse_id"
    t.index ["user_id"], name: "index_etudiants_on_user_id"
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

  create_table "niveauformations", force: :cascade do |t|
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
    t.string "passport"
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

  create_table "zones", force: :cascade do |t|
    t.string "name"
    t.string "codeqr"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_zones_on_user_id"
  end

  add_foreign_key "etudiants", "boursiers"
  add_foreign_key "etudiants", "carteconsulaires"
  add_foreign_key "etudiants", "faireanneelangues"
  add_foreign_key "etudiants", "genres"
  add_foreign_key "etudiants", "langueformations"
  add_foreign_key "etudiants", "niveauformations"
  add_foreign_key "etudiants", "provinces"
  add_foreign_key "etudiants", "typebourses"
  add_foreign_key "etudiants", "users"
  add_foreign_key "students", "boursiers"
  add_foreign_key "students", "faireanneelangues"
  add_foreign_key "students", "genres"
  add_foreign_key "students", "langueformations"
  add_foreign_key "students", "niveauformations"
  add_foreign_key "students", "provinces"
  add_foreign_key "students", "typebourses"
  add_foreign_key "students", "users"
  add_foreign_key "zones", "users"
end
