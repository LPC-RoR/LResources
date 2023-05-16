class AddOwnerToAppNomina < ActiveRecord::Migration[7.0]
  def change
    add_column :app_nominas, :owner_class, :string
    add_index :app_nominas, :owner_class
    add_column :app_nominas, :owner_id, :integer
    add_index :app_nominas, :owner_id
  end
end
