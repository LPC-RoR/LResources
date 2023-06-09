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

ActiveRecord::Schema[7.0].define(version: 2023_06_05_205306) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "app_administradores", force: :cascade do |t|
    t.string "app_administrador"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "owner_class"
    t.integer "owner_id"
    t.index ["email"], name: "index_app_administradores_on_email"
    t.index ["owner_class"], name: "index_app_administradores_on_owner_class"
    t.index ["owner_id"], name: "index_app_administradores_on_owner_id"
  end

  create_table "app_archivos", force: :cascade do |t|
    t.string "app_archivo"
    t.string "owner_class"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_class"], name: "index_app_archivos_on_owner_class"
    t.index ["owner_id"], name: "index_app_archivos_on_owner_id"
  end

  create_table "app_contactos", force: :cascade do |t|
    t.string "app_contacto"
    t.string "telefono"
    t.string "email"
    t.string "owner_class"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_class"], name: "index_app_contactos_on_owner_class"
    t.index ["owner_id"], name: "index_app_contactos_on_owner_id"
  end

  create_table "app_dir_dires", force: :cascade do |t|
    t.integer "parent_id"
    t.integer "child_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["child_id"], name: "index_app_dir_dires_on_child_id"
    t.index ["parent_id"], name: "index_app_dir_dires_on_parent_id"
  end

  create_table "app_directorios", force: :cascade do |t|
    t.string "app_directorio"
    t.string "owner_class"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "directorio_control"
    t.index ["app_directorio"], name: "index_app_directorios_on_app_directorio"
    t.index ["owner_class"], name: "index_app_directorios_on_owner_class"
    t.index ["owner_id"], name: "index_app_directorios_on_owner_id"
  end

  create_table "app_documentos", force: :cascade do |t|
    t.string "app_documento"
    t.string "owner_class"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "existencia"
    t.string "vencimiento"
    t.boolean "documento_control"
    t.string "referencia"
    t.index ["existencia"], name: "index_app_documentos_on_existencia"
    t.index ["owner_class"], name: "index_app_documentos_on_owner_class"
    t.index ["owner_id"], name: "index_app_documentos_on_owner_id"
    t.index ["referencia"], name: "index_app_documentos_on_referencia"
    t.index ["vencimiento"], name: "index_app_documentos_on_vencimiento"
  end

  create_table "app_empresas", force: :cascade do |t|
    t.string "app_empresa"
    t.string "rut"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rut"], name: "index_app_empresas_on_rut"
  end

  create_table "app_enlaces", force: :cascade do |t|
    t.string "app_enlace"
    t.string "link"
    t.string "owner_class"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_class"], name: "index_app_enlaces_on_owner_class"
    t.index ["owner_id"], name: "index_app_enlaces_on_owner_id"
  end

  create_table "app_escaneos", force: :cascade do |t|
    t.string "ownr_class"
    t.integer "ownr_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ownr_class"], name: "index_app_escaneos_on_ownr_class"
    t.index ["ownr_id"], name: "index_app_escaneos_on_ownr_id"
  end

  create_table "app_imagenes", force: :cascade do |t|
    t.string "app_imagen"
    t.string "imagen"
    t.string "credito_imagen"
    t.string "owner_class"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "orden"
    t.index ["app_imagen"], name: "index_app_imagenes_on_app_imagen"
    t.index ["orden"], name: "index_app_imagenes_on_orden"
    t.index ["owner_class"], name: "index_app_imagenes_on_owner_class"
    t.index ["owner_id"], name: "index_app_imagenes_on_owner_id"
  end

  create_table "app_mejoras", force: :cascade do |t|
    t.text "app_mejora"
    t.string "estado"
    t.string "owner_class"
    t.integer "owner_id"
    t.integer "app_perfil_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_perfil_id"], name: "index_app_mejoras_on_app_perfil_id"
    t.index ["estado"], name: "index_app_mejoras_on_estado"
    t.index ["owner_class"], name: "index_app_mejoras_on_owner_class"
    t.index ["owner_id"], name: "index_app_mejoras_on_owner_id"
  end

  create_table "app_mensajes", force: :cascade do |t|
    t.string "app_mensaje"
    t.string "tipo"
    t.string "estado"
    t.string "email"
    t.datetime "fecha_envio"
    t.text "detalle"
    t.integer "app_perfil_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_perfil_id"], name: "index_app_mensajes_on_app_perfil_id"
    t.index ["email"], name: "index_app_mensajes_on_email"
    t.index ["estado"], name: "index_app_mensajes_on_estado"
    t.index ["fecha_envio"], name: "index_app_mensajes_on_fecha_envio"
    t.index ["tipo"], name: "index_app_mensajes_on_tipo"
  end

  create_table "app_msg_msgs", force: :cascade do |t|
    t.integer "parent_id"
    t.integer "child_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["child_id"], name: "index_app_msg_msgs_on_child_id"
    t.index ["parent_id"], name: "index_app_msg_msgs_on_parent_id"
  end

  create_table "app_nominas", force: :cascade do |t|
    t.string "app_nomina"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "owner_class"
    t.integer "owner_id"
    t.index ["email"], name: "index_app_nominas_on_email"
    t.index ["owner_class"], name: "index_app_nominas_on_owner_class"
    t.index ["owner_id"], name: "index_app_nominas_on_owner_id"
  end

  create_table "app_observaciones", force: :cascade do |t|
    t.text "app_observacion"
    t.string "owner_class"
    t.integer "owner_id"
    t.integer "app_perfil_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_perfil_id"], name: "index_app_observaciones_on_app_perfil_id"
    t.index ["owner_class"], name: "index_app_observaciones_on_owner_class"
    t.index ["owner_id"], name: "index_app_observaciones_on_owner_id"
  end

  create_table "app_perfiles", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_app_perfiles_on_email"
  end

  create_table "app_repositorios", force: :cascade do |t|
    t.string "app_repositorio"
    t.string "owner_class"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_repositorio"], name: "index_app_repositorios_on_app_repositorio"
    t.index ["owner_class"], name: "index_app_repositorios_on_owner_class"
    t.index ["owner_id"], name: "index_app_repositorios_on_owner_id"
  end

  create_table "are_ares", force: :cascade do |t|
    t.integer "jefatura_id"
    t.integer "subordinada_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jefatura_id"], name: "index_are_ares_on_jefatura_id"
    t.index ["subordinada_id"], name: "index_are_ares_on_subordinada_id"
  end

  create_table "areas", force: :cascade do |t|
    t.string "area"
    t.string "ownr_class"
    t.integer "ownr_id"
    t.integer "app_empresa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_empresa_id"], name: "index_areas_on_app_empresa_id"
    t.index ["ownr_class"], name: "index_areas_on_ownr_class"
    t.index ["ownr_id"], name: "index_areas_on_ownr_id"
  end

  create_table "cargos", force: :cascade do |t|
    t.string "cargo"
    t.integer "dotacion"
    t.integer "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_cargos_on_area_id"
    t.index ["cargo"], name: "index_cargos_on_cargo"
    t.index ["dotacion"], name: "index_cargos_on_dotacion"
  end

  create_table "control_documentos", force: :cascade do |t|
    t.string "control_documento"
    t.string "existencia"
    t.string "vencimiento"
    t.string "ownr_class"
    t.integer "ownr_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["control_documento"], name: "index_control_documentos_on_control_documento"
    t.index ["existencia"], name: "index_control_documentos_on_existencia"
    t.index ["ownr_class"], name: "index_control_documentos_on_ownr_class"
    t.index ["ownr_id"], name: "index_control_documentos_on_ownr_id"
    t.index ["vencimiento"], name: "index_control_documentos_on_vencimiento"
  end

  create_table "empleados", force: :cascade do |t|
    t.string "nombres"
    t.string "apellido_paterno"
    t.string "apellido_materno"
    t.string "rut"
    t.string "direccion"
    t.string "telefono"
    t.string "sexo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cargo_id"
    t.boolean "jefatura"
    t.index ["cargo_id"], name: "index_empleados_on_cargo_id"
    t.index ["jefatura"], name: "index_empleados_on_jefatura"
  end

  create_table "h_imagenes", force: :cascade do |t|
    t.string "h_imagen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["h_imagen"], name: "index_h_imagenes_on_h_imagen"
  end

  create_table "h_links", force: :cascade do |t|
    t.string "h_link"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "h_temas", force: :cascade do |t|
    t.string "h_tema"
    t.text "detalle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["h_tema"], name: "index_h_temas_on_h_tema"
  end

  create_table "ld_formatos", force: :cascade do |t|
    t.string "ld_formato"
    t.string "ownr_class"
    t.integer "ownr_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ld_tipo_formato_id"
    t.index ["ld_tipo_formato_id"], name: "index_ld_formatos_on_ld_tipo_formato_id"
    t.index ["ownr_class"], name: "index_ld_formatos_on_ownr_class"
    t.index ["ownr_id"], name: "index_ld_formatos_on_ownr_id"
  end

  create_table "ld_parrafos", force: :cascade do |t|
    t.string "ld_parrafo"
    t.text "texto"
    t.string "ownr_class"
    t.integer "ownr_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ld_tipo_parrafo_id"
    t.index ["ld_tipo_parrafo_id"], name: "index_ld_parrafos_on_ld_tipo_parrafo_id"
    t.index ["ownr_class"], name: "index_ld_parrafos_on_ownr_class"
    t.index ["ownr_id"], name: "index_ld_parrafos_on_ownr_id"
  end

  create_table "ld_tipo_formatos", force: :cascade do |t|
    t.string "ld_tipo_formato"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ld_tipo_formato"], name: "index_ld_tipo_formatos_on_ld_tipo_formato"
  end

  create_table "ld_tipo_parrafos", force: :cascade do |t|
    t.string "ld_tipo_parrafo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ld_tipo_parrafo"], name: "index_ld_tipo_parrafos_on_ld_tipo_parrafo"
  end

  create_table "sb_elementos", force: :cascade do |t|
    t.integer "orden"
    t.integer "nivel"
    t.string "tipo"
    t.string "sb_elemento"
    t.string "acceso"
    t.boolean "activo"
    t.string "despliegue"
    t.string "controlador"
    t.integer "sb_lista_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["orden"], name: "index_sb_elementos_on_orden"
    t.index ["sb_lista_id"], name: "index_sb_elementos_on_sb_lista_id"
  end

  create_table "sb_listas", force: :cascade do |t|
    t.string "sb_lista"
    t.string "acceso"
    t.string "ruta"
    t.boolean "activa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "st_estados", force: :cascade do |t|
    t.integer "orden"
    t.string "st_estado"
    t.string "destinos"
    t.string "destinos_admin"
    t.integer "st_modelo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["orden"], name: "index_st_estados_on_orden"
    t.index ["st_estado"], name: "index_st_estados_on_st_estado"
    t.index ["st_modelo_id"], name: "index_st_estados_on_st_modelo_id"
  end

  create_table "st_logs", force: :cascade do |t|
    t.integer "app_perfil_id"
    t.string "class_name"
    t.integer "objeto_id"
    t.string "e_origen"
    t.string "e_destino"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["app_perfil_id"], name: "index_st_logs_on_app_perfil_id"
    t.index ["class_name"], name: "index_st_logs_on_class_name"
    t.index ["e_destino"], name: "index_st_logs_on_e_destino"
    t.index ["e_origen"], name: "index_st_logs_on_e_origen"
    t.index ["objeto_id"], name: "index_st_logs_on_objeto_id"
  end

  create_table "st_modelos", force: :cascade do |t|
    t.string "st_modelo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["st_modelo"], name: "index_st_modelos_on_st_modelo"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

end
