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

ActiveRecord::Schema.define(version: 2020_08_29_160035) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carteconsulaires", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "etudiants", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.date "date_nasissance"
    t.bigint "telephone"
    t.string "passport"
    t.date "date_passport_expiration"
    t.string "adresse"
    t.string "boursier"
    t.string "type_bourse"
    t.date "annee_langue_chinoise"
    t.string "province"
    t.string "faire_annnee_langue_chinoise"
    t.string "universite_annee_langue_chinoise"
    t.date "annee_debut_filiere"
    t.string "province_uinversite_filiere"
    t.string "universite_filiere"
    t.string "filiere"
    t.integer "duree_formation"
    t.string "langue_de_formation"
    t.date "annee_de_graduation"
    t.integer "niveau_formation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "genre_id"
    t.bigint "carteconsulaire_id"
    t.index ["carteconsulaire_id"], name: "index_etudiants_on_carteconsulaire_id"
    t.index ["genre_id"], name: "index_etudiants_on_genre_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "etudiants", "carteconsulaires"
  add_foreign_key "etudiants", "genres"
end
