class CreateEmpleados < ActiveRecord::Migration[7.0]
  def change
    create_table :empleados do |t|
      t.string :nombres
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :rut
      t.string :direccion
      t.string :telefono
      t.string :sexo

      t.timestamps
    end
  end
end
