class CreateLdParrafos < ActiveRecord::Migration[7.0]
  def change
    create_table :ld_parrafos do |t|
      t.string :ld_parrafo
      t.text :texto
      t.string :ownr_class
      t.integer :ownr_id

      t.timestamps
    end
    add_index :ld_parrafos, :ownr_class
    add_index :ld_parrafos, :ownr_id
  end
end
