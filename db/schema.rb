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

ActiveRecord::Schema.define(version: 2020_10_11_190335) do

  create_table "atividades", force: :cascade do |t|
    t.string "codigo"
    t.integer "carteira_id"
    t.decimal "valor"
    t.date "data_negociada"
    t.integer "quantidade"
    t.string "movimento"
    t.integer "tipo_id"
    t.integer "ativo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "investimento_id"
    t.index ["ativo_id"], name: "index_atividades_on_ativo_id"
    t.index ["carteira_id"], name: "index_atividades_on_carteira_id"
    t.index ["tipo_id"], name: "index_atividades_on_tipo_id"
  end

  create_table "ativos", force: :cascade do |t|
    t.string "ticker"
    t.integer "tipo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tipo_id"], name: "index_ativos_on_tipo_id"
  end

  create_table "carteiras", force: :cascade do |t|
    t.string "nome"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_carteiras_on_user_id"
  end

  create_table "investimentos", force: :cascade do |t|
    t.integer "carteira_id"
    t.integer "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ativo_id"
    t.index ["carteira_id"], name: "index_investimentos_on_carteira_id"
  end

  create_table "tipos", force: :cascade do |t|
    t.string "nome"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
