class CreateAppDocumentos < ActiveRecord::Migration[7.0]
  def change
    create_table :app_documentos do |t|
      t.string :app_documento
      t.string :owner_class
      t.integer :owner_id

      t.timestamps
    end
    add_index :app_documentos, :owner_class
    add_index :app_documentos, :owner_id
  end
end
