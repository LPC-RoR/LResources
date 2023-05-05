class CreateAppMejoras < ActiveRecord::Migration[7.0]
  def change
    create_table :app_mejoras do |t|
      t.text :app_mejora
      t.string :estado
      t.string :owner_class
      t.integer :owner_id
      t.integer :app_perfil_id

      t.timestamps
    end
    add_index :app_mejoras, :estado
    add_index :app_mejoras, :owner_class
    add_index :app_mejoras, :owner_id
    add_index :app_mejoras, :app_perfil_id
  end
end
