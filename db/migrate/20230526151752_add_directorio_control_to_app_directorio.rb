class AddDirectorioControlToAppDirectorio < ActiveRecord::Migration[7.0]
  def change
    add_column :app_directorios, :directorio_control, :boolean
  end
end
