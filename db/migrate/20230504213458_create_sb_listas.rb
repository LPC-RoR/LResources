class CreateSbListas < ActiveRecord::Migration[7.0]
  def change
    create_table :sb_listas do |t|
      t.string :sb_lista
      t.string :acceso
      t.string :ruta
      t.boolean :activa

      t.timestamps
    end
  end
end
