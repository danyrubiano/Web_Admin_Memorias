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

ActiveRecord::Schema.define(version: 20160613163736) do

  create_table "administradors", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "rut",                    limit: 255
    t.string   "nombre",                 limit: 255
    t.string   "apellido",               limit: 255
    t.integer  "telefono",               limit: 4
  end

  add_index "administradors", ["email"], name: "index_administradors_on_email", unique: true, using: :btree
  add_index "administradors", ["reset_password_token"], name: "index_administradors_on_reset_password_token", unique: true, using: :btree

  create_table "alumnos", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.integer  "carrera_id",             limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "rut",                    limit: 255
    t.string   "nombre",                 limit: 255
    t.string   "apellido",               limit: 255
    t.integer  "telefono",               limit: 4
  end

  add_index "alumnos", ["carrera_id"], name: "index_alumnos_on_carrera_id", using: :btree
  add_index "alumnos", ["email"], name: "index_alumnos_on_email", unique: true, using: :btree
  add_index "alumnos", ["reset_password_token"], name: "index_alumnos_on_reset_password_token", unique: true, using: :btree

  create_table "carreras", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "comisions", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "rut",                    limit: 255
    t.string   "nombre",                 limit: 255
    t.string   "apellido",               limit: 255
    t.integer  "telefono",               limit: 4
  end

  add_index "comisions", ["email"], name: "index_comisions_on_email", unique: true, using: :btree
  add_index "comisions", ["reset_password_token"], name: "index_comisions_on_reset_password_token", unique: true, using: :btree

  create_table "coordinadors", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "rut",                    limit: 255
    t.string   "nombre",                 limit: 255
    t.string   "apellido",               limit: 255
    t.integer  "telefono",               limit: 4
  end

  add_index "coordinadors", ["email"], name: "index_coordinadors_on_email", unique: true, using: :btree
  add_index "coordinadors", ["reset_password_token"], name: "index_coordinadors_on_reset_password_token", unique: true, using: :btree

  create_table "correccions", force: :cascade do |t|
    t.integer  "tipo_correccion_id", limit: 4
    t.integer  "teacher_id",         limit: 4
    t.integer  "mem_id",             limit: 4
    t.integer  "validez_correcion",  limit: 4
    t.text     "ruta_correccion",    limit: 65535
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "cover_file_name",    limit: 255
    t.string   "cover_content_type", limit: 255
    t.integer  "cover_file_size",    limit: 4
    t.datetime "cover_updated_at"
  end

  add_index "correccions", ["mem_id"], name: "index_correccions_on_mem_id", using: :btree
  add_index "correccions", ["teacher_id"], name: "index_correccions_on_teacher_id", using: :btree
  add_index "correccions", ["tipo_correccion_id"], name: "index_correccions_on_tipo_correccion_id", using: :btree

  create_table "correctors", force: :cascade do |t|
    t.integer  "tipo_corector", limit: 4
    t.integer  "teacher_id",    limit: 4
    t.integer  "mem_id",        limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "correctors", ["mem_id"], name: "index_correctors_on_mem_id", using: :btree
  add_index "correctors", ["teacher_id"], name: "index_correctors_on_teacher_id", using: :btree

  create_table "documentacions", force: :cascade do |t|
    t.string   "nombre",                limit: 255
    t.integer  "validez_documentacion", limit: 4
    t.integer  "mem_id",                limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "cover_file_name",       limit: 255
    t.string   "cover_content_type",    limit: 255
    t.integer  "cover_file_size",       limit: 4
    t.datetime "cover_updated_at"
  end

  add_index "documentacions", ["mem_id"], name: "index_documentacions_on_mem_id", using: :btree

  create_table "estados", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.integer  "dias",       limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "evaluacions", force: :cascade do |t|
    t.integer  "teacher_id", limit: 4
    t.integer  "alumno_id",  limit: 4
    t.float    "nota",       limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "evaluacions", ["alumno_id"], name: "index_evaluacions_on_alumno_id", using: :btree
  add_index "evaluacions", ["teacher_id"], name: "index_evaluacions_on_teacher_id", using: :btree

  create_table "memorists", force: :cascade do |t|
    t.integer  "mem_id",     limit: 4
    t.integer  "alumno_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "memorists", ["alumno_id"], name: "index_memorists_on_alumno_id", using: :btree
  add_index "memorists", ["mem_id"], name: "index_memorists_on_mem_id", using: :btree

  create_table "mems", force: :cascade do |t|
    t.integer  "estado_id",         limit: 4
    t.date     "fecha_memoria"
    t.date     "fecha_avance"
    t.date     "fecha_defensa"
    t.date     "fecha_limimte"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "titulo",            limit: 255
    t.string   "state",             limit: 255,   default: "creada"
    t.text     "resumen_ejecutivo", limit: 65535
  end

  add_index "mems", ["estado_id"], name: "index_mems_on_estado_id", using: :btree

  create_table "teachers", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "rut",                    limit: 255
    t.string   "nombre",                 limit: 255
    t.string   "apellido",               limit: 255
    t.integer  "telefono",               limit: 4
  end

  add_index "teachers", ["email"], name: "index_teachers_on_email", unique: true, using: :btree
  add_index "teachers", ["reset_password_token"], name: "index_teachers_on_reset_password_token", unique: true, using: :btree

  create_table "tipo_correccions", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "topico_asignados", force: :cascade do |t|
    t.integer  "mem_id",     limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "topico_id",  limit: 4
  end

  add_index "topico_asignados", ["mem_id"], name: "index_topico_asignados_on_mem_id", using: :btree
  add_index "topico_asignados", ["topico_id"], name: "index_topico_asignados_on_topico_id", using: :btree

  create_table "topico_teachers", force: :cascade do |t|
    t.integer  "topico_id",  limit: 4
    t.integer  "teacher_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "topico_teachers", ["teacher_id"], name: "index_topico_teachers_on_teacher_id", using: :btree
  add_index "topico_teachers", ["topico_id"], name: "index_topico_teachers_on_topico_id", using: :btree

  create_table "topicos", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "alumnos", "carreras"
  add_foreign_key "correccions", "mems"
  add_foreign_key "correccions", "teachers"
  add_foreign_key "correccions", "tipo_correccions"
  add_foreign_key "correctors", "mems"
  add_foreign_key "correctors", "teachers"
  add_foreign_key "documentacions", "mems"
  add_foreign_key "evaluacions", "alumnos"
  add_foreign_key "evaluacions", "teachers"
  add_foreign_key "memorists", "alumnos"
  add_foreign_key "memorists", "mems"
  add_foreign_key "mems", "estados"
  add_foreign_key "topico_asignados", "mems"
  add_foreign_key "topico_asignados", "topicos"
  add_foreign_key "topico_teachers", "teachers"
  add_foreign_key "topico_teachers", "topicos"
end
