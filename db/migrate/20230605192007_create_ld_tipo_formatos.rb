class CreateLdTipoFormatos < ActiveRecord::Migration[7.0]
  def change
    create_table :ld_tipo_formatos do |t|
      t.string :ld_tipo_formato

      t.timestamps
    end
    add_index :ld_tipo_formatos, :ld_tipo_formato
  end
end
