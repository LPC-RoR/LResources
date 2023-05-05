class CreateAppObservaciones < ActiveRecord::Migration[7.0]
  def change
    create_table :app_observaciones do |t|
      t.text :app_observacion
      t.string :owner_class
      t.integer :owner_id
      t.integer :app_perfil_id

      t.timestamps
    end
    add_index :app_observaciones, :owner_class
    add_index :app_observaciones, :owner_id
    add_index :app_observaciones, :app_perfil_id
  end
end
