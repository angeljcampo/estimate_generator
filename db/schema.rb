# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_01_11_014709) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "communes", force: :cascade do |t|
    t.string "name"
    t.string "region"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "estimates", force: :cascade do |t|
    t.integer "service_id"
    t.integer "plan_id"
    t.string "client_name"
    t.string "client_lastname"
    t.string "client_phone"
    t.string "client_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_velatorio", default: false
    t.integer "commune_id"
    t.integer "destino_repatriacion"
  end

  create_table "plans", force: :cascade do |t|
    t.boolean "cremacion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "cofre"
    t.integer "capilla"
    t.boolean "cruz", default: false
    t.boolean "sala_velatoria", default: false
    t.boolean "flores", default: false
    t.boolean "libro_de_condolencias", default: false
    t.boolean "tarjeta_de_condolencias", default: false
    t.integer "cubre_urnas"
    t.boolean "pie_de_urnas", default: false
    t.boolean "medico", default: false
    t.boolean "inscripcion_registro_civil", default: false
    t.boolean "tramites_legales", default: false
    t.integer "carroza_panoramica"
    t.integer "van_de_acompanamiento"
    t.boolean "cinta_de_identificacion", default: false
    t.boolean "video_de_homenaje", default: false
    t.integer "cafeteria"
    t.boolean "obituario_virtual", default: false
    t.boolean "obituario_mercucio", default: false
    t.boolean "homenaje_presencial", default: false
    t.integer "tipo_de_anfora"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.boolean "other_options", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
