class AddLdTipoFormatoIdToLdFormato < ActiveRecord::Migration[7.0]
  def change
    add_column :ld_formatos, :ld_tipo_formato_id, :integer
    add_index :ld_formatos, :ld_tipo_formato_id
  end
end
