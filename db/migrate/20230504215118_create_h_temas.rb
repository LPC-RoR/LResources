class CreateHTemas < ActiveRecord::Migration[7.0]
  def change
    create_table :h_temas do |t|
      t.string :h_tema
      t.text :detalle

      t.timestamps
    end
    add_index :h_temas, :h_tema
  end
end
