class CreateStLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :st_logs do |t|
      t.integer :app_perfil_id
      t.string :class_name
      t.integer :objeto_id
      t.string :e_origen
      t.string :e_destino

      t.timestamps
    end
    add_index :st_logs, :app_perfil_id
    add_index :st_logs, :class_name
    add_index :st_logs, :objeto_id
    add_index :st_logs, :e_origen
    add_index :st_logs, :e_destino
  end
end
