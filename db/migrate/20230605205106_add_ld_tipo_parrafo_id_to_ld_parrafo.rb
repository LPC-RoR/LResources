class AddLdTipoParrafoIdToLdParrafo < ActiveRecord::Migration[7.0]
  def change
    add_column :ld_parrafos, :ld_tipo_parrafo_id, :integer
    add_index :ld_parrafos, :ld_tipo_parrafo_id
  end
end
