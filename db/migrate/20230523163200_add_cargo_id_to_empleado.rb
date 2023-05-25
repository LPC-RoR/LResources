class AddCargoIdToEmpleado < ActiveRecord::Migration[7.0]
  def change
    add_column :empleados, :cargo_id, :integer
    add_index :empleados, :cargo_id
  end
end
