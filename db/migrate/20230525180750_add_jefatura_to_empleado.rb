class AddJefaturaToEmpleado < ActiveRecord::Migration[7.0]
  def change
    add_column :empleados, :jefatura, :boolean
    add_index :empleados, :jefatura
  end
end
