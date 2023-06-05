class AddReferenciaToAppDocumento < ActiveRecord::Migration[7.0]
  def change
    add_column :app_documentos, :referencia, :string
    add_index :app_documentos, :referencia
  end
end
