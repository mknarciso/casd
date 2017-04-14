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

ActiveRecord::Schema.define(version: 20170413234227) do

  create_table "candidatos", force: :cascade do |t|
    t.string   "name"
    t.date     "born"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "convocados", force: :cascade do |t|
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

end
