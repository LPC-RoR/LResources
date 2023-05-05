class CreateStModelos < ActiveRecord::Migration[7.0]
  def change
    create_table :st_modelos do |t|
      t.string :st_modelo

      t.timestamps
    end
    add_index :st_modelos, :st_modelo
  end
end
