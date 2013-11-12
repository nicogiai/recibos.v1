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

ActiveRecord::Schema.define(version: 20131110061336) do

  create_table "afip_acts", force: true do |t|
    t.string   "actividad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "afip_acts_clientes", id: false, force: true do |t|
    t.integer "afip_act_id", null: false
    t.integer "cliente_id",  null: false
  end

  add_index "afip_acts_clientes", ["afip_act_id", "cliente_id"], name: "index_afip_acts_clientes_on_afip_act_id_and_cliente_id", unique: true
  add_index "afip_acts_clientes", ["cliente_id"], name: "index_afip_acts_clientes_on_cliente_id"

  create_table "autonomos", force: true do |t|
    t.string   "categoria"
    t.decimal  "importe",    precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "autonomos_por_periodos", force: true do |t|
    t.decimal  "importe",     precision: 8, scale: 2
    t.integer  "autonomo_id"
    t.integer  "periodo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "autonomos_por_periodos", ["autonomo_id"], name: "index_autonomos_por_periodos_on_autonomo_id"
  add_index "autonomos_por_periodos", ["periodo_id"], name: "index_autonomos_por_periodos_on_periodo_id"

  create_table "clientes", force: true do |t|
    t.string   "cliente"
    t.string   "cuit"
    t.string   "telefono1"
    t.string   "telefono2"
    t.string   "telefono3"
    t.string   "email1"
    t.string   "email2"
    t.date     "fecha_inicio"
    t.string   "clave_fiscal"
    t.string   "clave_muni"
    t.string   "domicilio1"
    t.string   "domicilio2"
    t.text     "notas"
    t.string   "iibb_cm"
    t.integer  "cant_adherentes"
    t.integer  "autonomo_id"
    t.integer  "monotributo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clientes", ["autonomo_id"], name: "index_clientes_on_autonomo_id"
  add_index "clientes", ["monotributo_id"], name: "index_clientes_on_monotributo_id"

  create_table "clientes_dgr_acts", id: false, force: true do |t|
    t.integer "dgr_act_id", null: false
    t.integer "cliente_id", null: false
  end

  add_index "clientes_dgr_acts", ["cliente_id"], name: "index_clientes_dgr_acts_on_cliente_id"
  add_index "clientes_dgr_acts", ["dgr_act_id", "cliente_id"], name: "index_clientes_dgr_acts_on_dgr_act_id_and_cliente_id", unique: true

  create_table "clientes_por_impuestos", force: true do |t|
    t.decimal  "importe",     precision: 8, scale: 2
    t.boolean  "recibe_mail"
    t.integer  "cliente_id"
    t.integer  "impuesto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clientes_por_impuestos", ["cliente_id"], name: "index_clientes_por_impuestos_on_cliente_id"
  add_index "clientes_por_impuestos", ["impuesto_id"], name: "index_clientes_por_impuestos_on_impuesto_id"

  create_table "dgr_acts", force: true do |t|
    t.string   "actividad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "historial_de_impuestos", force: true do |t|
    t.integer  "cliente_id"
    t.integer  "impuestos_por_periodo_id"
    t.boolean  "cliente_avisado"
    t.decimal  "importe",                  precision: 8, scale: 2
    t.text     "notas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "historial_de_impuestos", ["cliente_id"], name: "index_historial_de_impuestos_on_cliente_id"
  add_index "historial_de_impuestos", ["impuestos_por_periodo_id"], name: "index_historial_de_impuestos_on_impuestos_por_periodo_id"

  create_table "historial_de_impuestos_pagos", id: false, force: true do |t|
    t.integer "pago_id",                  null: false
    t.integer "historial_de_impuesto_id", null: false
  end

  add_index "historial_de_impuestos_pagos", ["historial_de_impuesto_id"], name: "index_hdip_on_hdi"
  add_index "historial_de_impuestos_pagos", ["pago_id", "historial_de_impuesto_id"], name: "index_hdip_on_p", unique: true

  create_table "impuestos", force: true do |t|
    t.string   "impuesto"
    t.decimal  "importe",              precision: 8, scale: 2
    t.boolean  "cm"
    t.date     "default_vencimiento0"
    t.date     "default_vencimiento1"
    t.date     "default_vencimiento2"
    t.date     "default_vencimiento3"
    t.date     "default_vencimiento4"
    t.date     "default_vencimiento5"
    t.date     "default_vencimiento6"
    t.date     "default_vencimiento7"
    t.date     "default_vencimiento8"
    t.date     "default_vencimiento9"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "impuestos_por_payment_places", force: true do |t|
    t.integer  "orden"
    t.integer  "impuesto_id"
    t.integer  "payment_place_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "impuestos_por_payment_places", ["impuesto_id"], name: "index_impuestos_por_payment_places_on_impuesto_id"
  add_index "impuestos_por_payment_places", ["payment_place_id"], name: "index_impuestos_por_payment_places_on_payment_place_id"

  create_table "impuestos_por_periodos", force: true do |t|
    t.integer  "periodo_id"
    t.integer  "impuesto_id"
    t.date     "default_vencimiento0"
    t.date     "default_vencimiento1"
    t.date     "default_vencimiento2"
    t.date     "default_vencimiento3"
    t.date     "default_vencimiento4"
    t.date     "default_vencimiento5"
    t.date     "default_vencimiento6"
    t.date     "default_vencimiento7"
    t.date     "default_vencimiento8"
    t.date     "default_vencimiento9"
    t.decimal  "importe",              precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "impuestos_por_periodos", ["impuesto_id"], name: "index_impuestos_por_periodos_on_impuesto_id"
  add_index "impuestos_por_periodos", ["periodo_id"], name: "index_impuestos_por_periodos_on_periodo_id"

  create_table "monotributos", force: true do |t|
    t.string   "categoria"
    t.decimal  "importe",               precision: 8, scale: 2
    t.boolean  "si_adherente"
    t.decimal  "importe_por_adherente", precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "monotributos_por_periodos", force: true do |t|
    t.decimal  "importe",        precision: 8, scale: 2
    t.integer  "monotributo_id"
    t.integer  "periodo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "monotributos_por_periodos", ["monotributo_id"], name: "index_monotributos_por_periodos_on_monotributo_id"
  add_index "monotributos_por_periodos", ["periodo_id"], name: "index_monotributos_por_periodos_on_periodo_id"

  create_table "movimientos", force: true do |t|
    t.string   "concepto"
    t.decimal  "importe",    precision: 8, scale: 2
    t.decimal  "saldo",      precision: 8, scale: 2
    t.text     "notas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pagos", force: true do |t|
    t.decimal  "importe",          precision: 8, scale: 2
    t.text     "notas"
    t.integer  "payment_place_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pagos", ["payment_place_id"], name: "index_pagos_on_payment_place_id"

  create_table "payment_places", force: true do |t|
    t.string   "lugar"
    t.text     "notas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "periodos", force: true do |t|
    t.date     "fecha_inicio"
    t.date     "fecha_fin"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recibos", force: true do |t|
    t.string   "concepto"
    t.decimal  "otros_importes", precision: 8, scale: 2
    t.text     "notas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recibos_de_impuestos", force: true do |t|
    t.integer  "recibo_id"
    t.integer  "historial_de_impuesto_id"
    t.date     "fecha_programada_de_pago"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recibos_de_impuestos", ["historial_de_impuesto_id"], name: "index_recibos_de_impuestos_on_historial_de_impuesto_id"
  add_index "recibos_de_impuestos", ["recibo_id"], name: "index_recibos_de_impuestos_on_recibo_id"

  create_table "usuarios", force: true do |t|
    t.string   "usuario"
    t.string   "clave"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
