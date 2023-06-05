class AddDocumentoControlToAppDocumento < ActiveRecord::Migration[7.0]
  def change
    add_column :app_documentos, :documento_control, :boolean
  end
end
