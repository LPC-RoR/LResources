class CreateAppDirectorios < ActiveRecord::Migration[7.0]
  def change
    create_table :app_directorios do |t|
      t.string :app_directorio
      t.string :owner_class
      t.integer :owner_id

      t.timestamps
    end
    add_index :app_directorios, :app_directorio
    add_index :app_directorios, :owner_class
    add_index :app_directorios, :owner_id
  end
end
