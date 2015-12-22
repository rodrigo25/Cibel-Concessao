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

ActiveRecord::Schema.define(version: 20151221175309) do

  create_table "categorias", force: :cascade do |t|
    t.decimal  "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cemiterios", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.integer  "CEP"
    t.string   "telefone"
    t.string   "bairro"
    t.string   "celular"
    t.string   "fax"
    t.datetime "prazo_concessao"
    t.integer  "categoria_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "cemiterios", ["categoria_id"], name: "index_cemiterios_on_categoria_id"
  add_index "cemiterios", ["nome"], name: "index_cemiterios_on_nome"

  create_table "concessionarios", force: :cascade do |t|
    t.string   "dt_obito"
    t.integer  "requerente_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "concessionarios", ["requerente_id"], name: "index_concessionarios_on_requerente_id"

  create_table "lotes", force: :cascade do |t|
    t.string   "quadra"
    t.string   "terreno"
    t.string   "gleba"
    t.string   "rua"
    t.string   "avenida"
    t.float    "largura"
    t.float    "comprimento"
    t.string   "tipo_construcao"
    t.integer  "qtd_gaveta"
    t.integer  "qtd_ossario"
    t.string   "estado"
    t.integer  "concessionario_id"
    t.integer  "cemiterio_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "lotes", ["avenida"], name: "index_lotes_on_avenida"
  add_index "lotes", ["cemiterio_id"], name: "index_lotes_on_cemiterio_id"
  add_index "lotes", ["concessionario_id"], name: "index_lotes_on_concessionario_id"
  add_index "lotes", ["gleba"], name: "index_lotes_on_gleba"
  add_index "lotes", ["quadra"], name: "index_lotes_on_quadra"
  add_index "lotes", ["rua"], name: "index_lotes_on_rua"
  add_index "lotes", ["terreno"], name: "index_lotes_on_terreno"

  create_table "municipes", force: :cascade do |t|
    t.string   "nome"
    t.string   "RG"
    t.string   "telefone"
    t.string   "endereco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "municipes", ["RG"], name: "index_municipes_on_RG"
  add_index "municipes", ["nome"], name: "index_municipes_on_nome"

  create_table "parcelas", force: :cascade do |t|
    t.integer  "numero"
    t.decimal  "valor"
    t.datetime "dt_pagamento"
    t.datetime "dt_vencimento"
    t.string   "tipo"
    t.integer  "processo_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "parcelas", ["processo_id"], name: "index_parcelas_on_processo_id"

  create_table "permutas", force: :cascade do |t|
    t.integer  "processo_id"
    t.integer  "lote_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "permutas", ["lote_id"], name: "index_permutas_on_lote_id"
  add_index "permutas", ["processo_id"], name: "index_permutas_on_processo_id"

  create_table "processos", force: :cascade do |t|
    t.integer  "num_cadastro"
    t.datetime "dt_abertura"
    t.decimal  "valor"
    t.string   "dt_baixa"
    t.string   "situacao"
    t.integer  "municipe_id"
    t.integer  "requerente_id"
    t.integer  "concessionario_id"
    t.integer  "processo_geral_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "processos", ["concessionario_id"], name: "index_processos_on_concessionario_id"
  add_index "processos", ["municipe_id"], name: "index_processos_on_municipe_id"
  add_index "processos", ["num_cadastro"], name: "index_processos_on_num_cadastro"
  add_index "processos", ["processo_geral_id"], name: "index_processos_on_processo_geral_id"
  add_index "processos", ["requerente_id"], name: "index_processos_on_requerente_id"

  create_table "processos_exclusao_comisso", force: :cascade do |t|
    t.string   "num_processo"
    t.string   "tipo"
    t.string   "situacao"
    t.integer  "processo_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "processos_exclusao_comisso", ["num_processo"], name: "index_processos_exclusao_comisso_on_num_processo"
  add_index "processos_exclusao_comisso", ["processo_id"], name: "index_processos_exclusao_comisso_on_processo_id"

  create_table "processos_gerais", force: :cascade do |t|
    t.string   "numero"
    t.string   "tipo"
    t.string   "observacoes"
    t.string   "livro"
    t.string   "folha"
    t.string   "resolucao"
    t.integer  "lote_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "processos_gerais", ["lote_id"], name: "index_processos_gerais_on_lote_id"
  add_index "processos_gerais", ["numero"], name: "index_processos_gerais_on_numero"
  add_index "processos_gerais", ["tipo"], name: "index_processos_gerais_on_tipo"

  create_table "registros", force: :cascade do |t|
    t.string   "tipo"
    t.string   "descricao"
    t.datetime "data"
    t.integer  "funcionario_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "registros", ["funcionario_id"], name: "index_registros_on_funcionario_id"

  create_table "requerentes", force: :cascade do |t|
    t.string   "CPF"
    t.datetime "dt_nascimento"
    t.string   "CEP"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "nacionalidade"
    t.string   "estado"
    t.string   "estado_civil"
    t.string   "profissao"
    t.string   "celular"
    t.string   "email"
    t.integer  "municipe_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "requerentes", ["municipe_id"], name: "index_requerentes_on_municipe_id"

  create_table "taxas_protocolo", force: :cascade do |t|
    t.string   "tipo"
    t.decimal  "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "RF"
    t.string   "nome"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["RF"], name: "index_users_on_RF"

end
