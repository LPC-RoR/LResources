class CreateCargos < ActiveRecord::Migration[7.0]
  def change
    create_table :cargos do |t|
      t.string :cargo
      t.integer :dotacion
      t.integer :area_id

      t.timestamps
    end
    add_index :cargos, :cargo
    add_index :cargos, :dotacion
    add_index :cargos, :area_id
  end
end
