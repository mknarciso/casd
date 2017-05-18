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

ActiveRecord::Schema.define(version: 20170422001342) do
ActiveRecord::Schema.define(version: 20170414001726) do

  create_table "candidate_forms", force: :cascade do |t|
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

  create_table "candidatos", force: :cascade do |t|
    t.string   "name"
    t.date     "born"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

end
