class AddCamposToAppDocumento < ActiveRecord::Migration[7.0]
  def change
    add_column :app_documentos, :existencia, :string
    add_index :app_documentos, :existencia
    add_column :app_documentos, :vencimiento, :string
    add_index :app_documentos, :vencimiento
  end
end
