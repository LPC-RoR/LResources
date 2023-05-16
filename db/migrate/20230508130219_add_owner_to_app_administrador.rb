class AddOwnerToAppAdministrador < ActiveRecord::Migration[7.0]
  def change
    add_column :app_administradores, :owner_class, :string
    add_index :app_administradores, :owner_class
    add_column :app_administradores, :owner_id, :integer
    add_index :app_administradores, :owner_id
  end
end
