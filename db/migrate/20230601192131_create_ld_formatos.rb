class CreateLdFormatos < ActiveRecord::Migration[7.0]
  def change
    create_table :ld_formatos do |t|
      t.string :ld_formato
      t.string :ownr_class
      t.integer :ownr_id

      t.timestamps
    end
    add_index :ld_formatos, :ownr_class
    add_index :ld_formatos, :ownr_id
  end
end
