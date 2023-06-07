class CreateLdTipoParrafos < ActiveRecord::Migration[7.0]
  def change
    create_table :ld_tipo_parrafos do |t|
      t.string :ld_tipo_parrafo

      t.timestamps
    end
    add_index :ld_tipo_parrafos, :ld_tipo_parrafo
  end
end
