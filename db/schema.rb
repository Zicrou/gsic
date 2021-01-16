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

ActiveRecord::Schema.define(version: 2021_01_16_175356) do

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
    t.bigint "universitefiliere_id"
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
    t.index ["universitefiliere_id"], name: "index_etudiants_on_universitefiliere_id"
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

  create_table "profils", force: :cascade do |t|
    t.string "email"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "zone_id"
    t.index ["zone_id"], name: "index_provinces_on_zone_id"
  end

  create_table "typebourses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "universitefilieres", force: :cascade do |t|
    t.string "name"
    t.bigint "province_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["province_id"], name: "index_universitefilieres_on_province_id"
  end

  create_table "universitelangues", force: :cascade do |t|
    t.string "name"
    t.bigint "province_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["province_id"], name: "index_universitelangues_on_province_id"
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "etudiants", "boursiers"
  add_foreign_key "etudiants", "carteconsulaires"
  add_foreign_key "etudiants", "faireanneelangues"
  add_foreign_key "etudiants", "genres"
  add_foreign_key "etudiants", "langueformations"
  add_foreign_key "etudiants", "niveauformations"
  add_foreign_key "etudiants", "typebourses"
  add_foreign_key "etudiants", "universitefilieres"
  add_foreign_key "etudiants", "users"
  add_foreign_key "provinces", "zones"
  add_foreign_key "universitefilieres", "provinces"
  add_foreign_key "universitelangues", "provinces"
  add_foreign_key "zones", "users"
end
