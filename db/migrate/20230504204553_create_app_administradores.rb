class CreateAppAdministradores < ActiveRecord::Migration[7.0]
  def change
    create_table :app_administradores do |t|
      t.string :app_administrador
      t.string :email

      t.timestamps
    end
    add_index :app_administradores, :email
  end
end
