class CreateAppContactos < ActiveRecord::Migration[7.0]
  def change
    create_table :app_contactos do |t|
      t.string :app_contacto
      t.string :telefono
      t.string :email
      t.string :owner_class
      t.integer :owner_id

      t.timestamps
    end
    add_index :app_contactos, :owner_class
    add_index :app_contactos, :owner_id
  end
end
