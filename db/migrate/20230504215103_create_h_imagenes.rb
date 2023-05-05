class CreateHImagenes < ActiveRecord::Migration[7.0]
  def change
    create_table :h_imagenes do |t|
      t.string :h_imagen

      t.timestamps
    end
    add_index :h_imagenes, :h_imagen
  end
end
