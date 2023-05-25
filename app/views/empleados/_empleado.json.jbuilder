json.extract! empleado, :id, :nombres, :apellido_paterno, :apellido_materno, :rut, :direccion, :telefono, :sexo, :created_at, :updated_at
json.url empleado_url(empleado, format: :json)
