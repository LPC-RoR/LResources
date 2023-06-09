class CreateSbElementos < ActiveRecord::Migration[7.0]
  def change
    create_table :sb_elementos do |t|
      t.integer :orden
      t.integer :nivel
      t.string :tipo
      t.string :sb_elemento
      t.string :acceso
      t.boolean :activo
      t.string :despliegue
      t.string :controlador
      t.integer :sb_lista_id

      t.timestamps
    end
    add_index :sb_elementos, :orden
    add_index :sb_elementos, :sb_lista_id
  end
end
