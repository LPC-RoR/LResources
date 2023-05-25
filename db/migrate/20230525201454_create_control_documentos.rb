class CreateControlDocumentos < ActiveRecord::Migration[7.0]
  def change
    create_table :control_documentos do |t|
      t.string :control_documento
      t.string :existencia
      t.string :vencimiento
      t.string :ownr_class
      t.integer :ownr_id

      t.timestamps
    end
    add_index :control_documentos, :control_documento
    add_index :control_documentos, :existencia
    add_index :control_documentos, :vencimiento
    add_index :control_documentos, :ownr_class
    add_index :control_documentos, :ownr_id
  end
end
