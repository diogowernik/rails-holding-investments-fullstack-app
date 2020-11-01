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

ActiveRecord::Schema.define(version: 2020_10_22_211653) do

  create_table "ativo_moves", force: :cascade do |t|
    t.integer "tipo_id"
    t.integer "ativo_id"
    t.integer "investimento_id"
    t.integer "corretora_id"
    t.integer "carteira_id"
    t.decimal "valor"
    t.date "data"
    t.integer "quantidade"
    t.string "movimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ativo_id"], name: "index_ativo_moves_on_ativo_id"
    t.index ["carteira_id"], name: "index_ativo_moves_on_carteira_id"
    t.index ["corretora_id"], name: "index_ativo_moves_on_corretora_id"
    t.index ["investimento_id"], name: "index_ativo_moves_on_investimento_id"
    t.index ["tipo_id"], name: "index_ativo_moves_on_tipo_id"
  end

  create_table "ativos", force: :cascade do |t|
    t.integer "tipo_id"
    t.decimal "valor"
    t.string "ticker"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tipo_id"], name: "index_ativos_on_tipo_id"
  end

  create_table "carteiras", force: :cascade do |t|
    t.integer "user_id"
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_carteiras_on_user_id"
  end

  create_table "corretoras", force: :cascade do |t|
    t.string "nome"
    t.string "moeda"
    t.decimal "corretagem_fiis"
    t.decimal "corretagem_acoes"
    t.decimal "corretagem_opcoes"
    t.decimal "corretagem_exerc"
    t.decimal "corretagem_exerc_porcent"
    t.decimal "corretagem_exerc_iss"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deriva_moves", force: :cascade do |t|
    t.integer "carteira_id"
    t.integer "estado_id"
    t.integer "corretora_id"
    t.integer "investimento_id"
    t.integer "vencimento_id"
    t.integer "ativo_id"
    t.integer "deriva_tipo_id"
    t.decimal "valor"
    t.decimal "strike"
    t.decimal "strike_total"
    t.decimal "valor_recompra"
    t.decimal "resultado"
    t.date "data"
    t.date "data_recompra"
    t.integer "quantidade"
    t.string "movimento"
    t.string "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ativo_id"], name: "index_deriva_moves_on_ativo_id"
    t.index ["carteira_id"], name: "index_deriva_moves_on_carteira_id"
    t.index ["corretora_id"], name: "index_deriva_moves_on_corretora_id"
    t.index ["deriva_tipo_id"], name: "index_deriva_moves_on_deriva_tipo_id"
    t.index ["estado_id"], name: "index_deriva_moves_on_estado_id"
    t.index ["investimento_id"], name: "index_deriva_moves_on_investimento_id"
    t.index ["vencimento_id"], name: "index_deriva_moves_on_vencimento_id"
  end

  create_table "deriva_tipos", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "derivativos", force: :cascade do |t|
    t.integer "ativo_id"
    t.integer "vencimento_id"
    t.decimal "strike"
    t.string "codigo"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ativo_id"], name: "index_derivativos_on_ativo_id"
    t.index ["vencimento_id"], name: "index_derivativos_on_vencimento_id"
  end

  create_table "estados", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "investimentos", force: :cascade do |t|
    t.integer "ativo_id"
    t.integer "carteira_id"
    t.integer "tipo_id"
    t.integer "corretora_id"
    t.decimal "valor_medio"
    t.integer "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ativo_id"], name: "index_investimentos_on_ativo_id"
    t.index ["carteira_id"], name: "index_investimentos_on_carteira_id"
    t.index ["corretora_id"], name: "index_investimentos_on_corretora_id"
    t.index ["tipo_id"], name: "index_investimentos_on_tipo_id"
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

  create_table "vencimentos", force: :cascade do |t|
    t.date "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
