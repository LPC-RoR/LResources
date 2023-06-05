class AddOrdenToAppImagen < ActiveRecord::Migration[7.0]
  def change
    add_column :app_imagenes, :orden, :integer
    add_index :app_imagenes, :orden
  end
end
