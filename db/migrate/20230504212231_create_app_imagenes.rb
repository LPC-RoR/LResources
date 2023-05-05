class CreateAppImagenes < ActiveRecord::Migration[7.0]
  def change
    create_table :app_imagenes do |t|
      t.string :app_imagen
      t.string :imagen
      t.string :credito_imagen
      t.string :owner_class
      t.integer :owner_id

      t.timestamps
    end
    add_index :app_imagenes, :app_imagen
    add_index :app_imagenes, :owner_class
    add_index :app_imagenes, :owner_id
  end
end
