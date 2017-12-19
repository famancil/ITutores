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

ActiveRecord::Schema.define(version: 20171207044648) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actividad_coordinadors", force: :cascade do |t|
    t.string "titulo"
    t.text "descripcion"
    t.string "carrera"
    t.string "campus"
    t.bigint "coordinador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coordinador_id"], name: "index_actividad_coordinadors_on_coordinador_id"
  end

  create_table "actividads", force: :cascade do |t|
    t.string "titulo"
    t.text "descripcion"
    t.string "carrera"
    t.boolean "todaCarrera"
    t.bigint "tutor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tutor_id"], name: "index_actividads_on_tutor_id"
  end

  create_table "coordinadors", force: :cascade do |t|
    t.string "nombre"
    t.string "apellidos"
    t.string "email"
    t.string "contraseña"
    t.string "campus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entrevista", force: :cascade do |t|
    t.text "comentario"
    t.integer "vocacional"
    t.integer "academico"
    t.integer "interracion"
    t.integer "migratorio"
    t.integer "salud"
    t.integer "familiar"
    t.integer "economico"
    t.integer "cantidadEntrevista"
    t.bigint "tutorado_id"
    t.bigint "tutor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tutor_id"], name: "index_entrevista_on_tutor_id"
    t.index ["tutorado_id"], name: "index_entrevista_on_tutorado_id"
  end

  create_table "mensajes", force: :cascade do |t|
    t.string "titulo"
    t.text "texto"
    t.string "carrera"
    t.string "campus"
    t.string "imageDIR"
    t.boolean "allCarrer", default: false
    t.bigint "coordinador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coordinador_id"], name: "index_mensajes_on_coordinador_id"
  end

  create_table "tutor_tutorado_semestres", id: false, force: :cascade do |t|
    t.string "semestre"
    t.bigint "tutorado_id"
    t.bigint "tutor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tutor_id"], name: "index_tutor_tutorado_semestres_on_tutor_id"
    t.index ["tutorado_id"], name: "index_tutor_tutorado_semestres_on_tutorado_id"
  end

  create_table "tutorado_actividads", force: :cascade do |t|
    t.boolean "asistencia"
    t.bigint "tutorado_id"
    t.bigint "actividad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actividad_id"], name: "index_tutorado_actividads_on_actividad_id"
    t.index ["tutorado_id"], name: "index_tutorado_actividads_on_tutorado_id"
  end

  create_table "tutorados", force: :cascade do |t|
    t.string "nombre"
    t.string "apellidos"
    t.string "email"
    t.string "rol"
    t.string "bloqueLibre"
    t.string "emailPersonal"
    t.string "numero"
    t.string "carrera"
    t.string "campus"
    t.string "semestre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tutors", force: :cascade do |t|
    t.string "nombre"
    t.string "apellidos"
    t.string "email"
    t.string "numero"
    t.string "contraseña"
    t.string "carrera"
    t.string "campus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
