class CreateAppArchivos < ActiveRecord::Migration[7.0]
  def change
    create_table :app_archivos do |t|
      t.string :app_archivo
      t.string :owner_class
      t.integer :owner_id

      t.timestamps
    end
    add_index :app_archivos, :owner_class
    add_index :app_archivos, :owner_id
  end
end
