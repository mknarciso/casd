# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170606143137) do

  create_table "candidatos", force: :cascade do |t|
    t.integer  "inscricao"
    t.string   "nome"
    t.string   "rg"
    t.string   "cpf"
    t.string   "sexo"
    t.date     "nascimento"
    t.string   "responsavel"
    t.string   "parentesco"
    t.string   "celular"
    t.string   "telefone"
    t.string   "email"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cep"
    t.string   "cidade"
    t.boolean  "especiais"
    t.string   "nec_especial"
    t.string   "tipo_escola"
    t.string   "escolaridade"
    t.string   "nome_escola"
    t.boolean  "trabalha"
    t.string   "profissao"
    t.string   "transporte"
    t.boolean  "internet"
    t.string   "ex_aluno"
    t.string   "como_conheceu"
    t.date     "data_inscricao"
    t.string   "facebook"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "entrevistas", force: :cascade do |t|
    t.boolean  "entregou_documentos"
    t.boolean  "historico_escolar"
    t.integer  "numero_de_pessoas"
    t.float    "iptu"
    t.float    "veiculos"
    t.float    "holerites_mes1"
    t.float    "holerites_mes2"
    t.float    "holerites_mes3"
    t.float    "aposentadorias"
    t.float    "auxilios"
    t.float    "renda_bruta"
    t.float    "rbpc"
    t.float    "agua_mes1"
    t.float    "agua_mes2"
    t.float    "agua_mes3"
    t.float    "luz_mes1"
    t.float    "luz_mes2"
    t.float    "luz_mes3"
    t.float    "net_TV_mes1"
    t.float    "net_TV_mes2"
    t.float    "net_TV_mes3"
    t.float    "aluguel"
    t.float    "outros_gastos"
    t.float    "gastos_totais"
    t.float    "renda_liq"
    t.float    "rlpc"
    t.string   "obs"
    t.boolean  "aprovado"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "candidato_id"
  end

  create_table "match_tables", force: :cascade do |t|
    t.integer  "candidato_id"
    t.integer  "entrevista_id"
    t.integer  "candidate_form_id"
    t.integer  "key"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "pesquisas", force: :cascade do |t|
    t.integer  "automovel"
    t.integer  "television"
    t.integer  "computers"
    t.integer  "washingMachines"
    t.integer  "fridge"
    t.integer  "radio"
    t.integer  "bathrooms"
    t.integer  "employees"
    t.string   "householderInstructionLevel"
    t.string   "city"
    t.string   "houseType"
    t.string   "transport"
    t.string   "familyIncomeParticipation"
    t.string   "workType"
    t.string   "individualMonthlyIncome"
    t.string   "howDoYouKnowCASD"
    t.integer  "isHighSchoolStudent"
    t.boolean  "hasStudiedCASD"
    t.boolean  "relativeInCASD"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",          null: false
    t.string   "encrypted_password",     default: "",          null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,           null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "role",                   default: "assistant"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
